"""Check gfx1010 assembly GEMMs through a PyTorch build that embeds them.

Compares fp16 and fp32 mm, addmm, bmm, baddbmm and nn.Linear (forward and
backward) with a float64 CPU reference. TT problems and M or N below 16 stay
on rocBLAS; those shapes are included so the fallback is checked too.

FP16 uses FP32 accumulation. Set PYTORCH_GFX1010_HGEMM_FP16_ACC=1 to also
check the FP16-accumulation kernels, which are much less accurate.

Usage:
    CUDA_VISIBLE_DEVICES=1 python tools/check_gfx1010_asm_gemm.py
"""

import os
import sys

import torch

torch.manual_seed(0)
dev = torch.device("cuda:0")
props = torch.cuda.get_device_properties(0)
fp16_acc = os.environ.get("PYTORCH_GFX1010_HGEMM_FP16_ACC") == "1"
print(torch.__version__, props.name, props.gcnArchName, f"fp16_acc={fp16_acc}")

failures = []


def rel_err(out, ref):
    out = out.detach().double().cpu()
    ref = ref.detach().double().cpu()
    if not torch.isfinite(out).all():
        return float("inf")
    return ((out - ref).abs().max() / ref.abs().max().clamp_min(1e-30)).item()


def tol_for(dtype):
    if dtype == torch.float32:
        return 2e-5
    if torch.backends.cuda.matmul.allow_fp16_accumulation:
        return 4e-2
    return 2e-3


def check(name, out, ref, tol):
    err = rel_err(out, ref)
    ok = err <= tol
    if not ok:
        failures.append(name)
    print(f"{'ok  ' if ok else 'FAIL'} {name}: {err:.2e} (tol {tol:.0e})")


def rnd(*shape, dtype):
    return torch.randn(*shape, device=dev, dtype=torch.float32).to(dtype)


def layouts(m, n, k, dtype):
    """Yield (tag, a, b) for NN, TN, NT and TT."""
    a = rnd(m, k, dtype=dtype)
    b = rnd(k, n, dtype=dtype)
    at = rnd(k, m, dtype=dtype).t()
    bt = rnd(n, k, dtype=dtype).t()
    yield "a@b", a, b
    yield "aT@b", at, b
    yield "a@bT", a, bt
    yield "aT@bT", at, bt


def check_gemms(dtype):
    tol = tol_for(dtype)
    shapes = [
        (1024, 1024, 1024), (1000, 1000, 1000), (2048, 2048, 2048),
        (17, 33, 9), (129, 65, 31), (1023, 777, 333),
        (64, 4096, 128), (4096, 64, 128), (8, 64, 64), (64, 8, 64),
        (100, 3000, 1), (16, 16, 16), (4096, 4096, 4096),
    ]
    for m, n, k in shapes:
        for tag, a, b in layouts(m, n, k, dtype):
            check(f"mm {dtype} {m}x{n}x{k} {tag}", a @ b, a.double().cpu() @ b.double().cpu(), tol)

    m, n, k = 513, 257, 129
    a, b, c = rnd(m, k, dtype=dtype), rnd(k, n, dtype=dtype), rnd(m, n, dtype=dtype)
    bias = rnd(n, dtype=dtype)
    ad, bd, cd, biasd = (x.double().cpu() for x in (a, b, c, bias))
    check(f"addmm bias {dtype}", torch.addmm(bias, a, b), biasd + ad @ bd, tol)
    check(f"addmm a0.5 b1.5 {dtype}", torch.addmm(c, a, b, beta=1.5, alpha=0.5), 1.5 * cd + 0.5 * ad @ bd, tol)
    cnan = torch.full_like(c, float("nan"))
    check(f"addmm beta0 nanC {dtype}", torch.addmm(cnan, a, b, beta=0), ad @ bd, tol)
    check(f"addmm alpha0 {dtype}", torch.addmm(c, a, b, beta=1.5, alpha=0), 1.5 * cd, tol)

    big = rnd(m, k + 3, dtype=dtype)
    a_pad = big[:, :k]
    flat = rnd(1 + k * n, dtype=dtype)
    b_off = flat[1:].view(k, n)
    check(f"mm padded+offset {dtype}", a_pad @ b_off, a_pad.double().cpu() @ b_off.double().cpu(), tol)
    out_big = torch.zeros(m, n + 5, device=dev, dtype=dtype)
    torch.mm(a, b, out=out_big[:, :n])
    check(f"mm out= strided {dtype}", out_big[:, :n], ad @ bd, tol)

    for batch, bm, bn, bk in [(8, 256, 128, 64), (96, 128, 128, 64), (3, 300, 200, 100), (2, 17, 33, 9)]:
        x, y = rnd(batch, bm, bk, dtype=dtype), rnd(batch, bk, bn, dtype=dtype)
        check(f"bmm {dtype} {batch}x{bm}x{bn}x{bk}", torch.bmm(x, y), x.double().cpu() @ y.double().cpu(), tol)
        yt = rnd(batch, bn, bk, dtype=dtype).transpose(1, 2)
        check(f"bmm bT {dtype} {batch}x{bm}x{bn}x{bk}", torch.bmm(x, yt), x.double().cpu() @ yt.double().cpu(), tol)
        xt = rnd(batch, bk, bm, dtype=dtype).transpose(1, 2)
        check(f"bmm aT {dtype} {batch}x{bm}x{bn}x{bk}", torch.bmm(xt, y), xt.double().cpu() @ y.double().cpu(), tol)
        cz = rnd(batch, bm, bn, dtype=dtype)
        check(
            f"baddbmm {dtype} {batch}x{bm}x{bn}x{bk}",
            torch.baddbmm(cz, x, y, beta=1.5, alpha=0.5),
            1.5 * cz.double().cpu() + 0.5 * x.double().cpu() @ y.double().cpu(),
            tol,
        )
    xs = rnd(16, 64, 32, dtype=dtype)[::2]
    ys = rnd(8, 32, 48, dtype=dtype)
    check(f"bmm strided batch {dtype}", torch.bmm(xs, ys), xs.double().cpu() @ ys.double().cpu(), tol)
    x1 = rnd(1, 64, 32, dtype=dtype).expand(6, 64, 32)
    y6 = rnd(6, 32, 48, dtype=dtype)
    check(f"matmul broadcast {dtype}", torch.matmul(x1, y6), x1.double().cpu() @ y6.double().cpu(), tol)
    x4 = rnd(4, 16, 64, 32, dtype=dtype)
    w = rnd(32, 48, dtype=dtype)
    check(f"matmul 4d@2d {dtype}", torch.matmul(x4, w), x4.double().cpu() @ w.double().cpu(), tol)

    for batch, fin, fout in [(2048, 1024, 1024), (100, 300, 200), (17, 64, 33)]:
        lin = torch.nn.Linear(fin, fout, device=dev, dtype=dtype)
        x = rnd(batch, fin, dtype=dtype).requires_grad_()
        y = lin(x)
        g = rnd(batch, fout, dtype=dtype)
        y.backward(g)
        weight, bb = lin.weight.detach().double().cpu(), lin.bias.detach().double().cpu()
        xd, gd = x.detach().double().cpu(), g.double().cpu()
        check(f"linear fwd {dtype} {batch}x{fin}->{fout}", y, xd @ weight.t() + bb, tol)
        check(f"linear dX {dtype} {batch}x{fin}->{fout}", x.grad, gd @ weight, tol)
        check(f"linear dW {dtype} {batch}x{fin}->{fout}", lin.weight.grad, gd.t() @ xd, tol)
        check(f"linear db {dtype} {batch}x{fin}->{fout}", lin.bias.grad, gd.sum(0), tol)


torch.backends.cuda.matmul.allow_fp16_accumulation = False
for dtype in (torch.float16, torch.float32):
    check_gemms(dtype)

if fp16_acc:
    torch.backends.cuda.matmul.allow_fp16_accumulation = True
    check_gemms(torch.float16)
    torch.backends.cuda.matmul.allow_fp16_accumulation = False

torch.cuda.synchronize()
print("\nFAILURES:", failures if failures else "none")
sys.exit(1 if failures else 0)
