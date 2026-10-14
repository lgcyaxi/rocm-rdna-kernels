# RDNA kernels

Tuned device code for the RX 6900 XT (gfx1030) and the RX 5700 XT (gfx1010). This repository is a PyTorch submodule. It is not a ROCm SDK. The SDK stays in TheRock.

## gfx1010 GEMM

`gfx1010/asm_gemm/` holds 16 Tensile assembly kernels for the RX 5700 XT, linked into one code object, `gfx1010_asm_gemm.co`. rocBLAS ships no tuned kernels for gfx1010, and its fallback is 1.6 times (fp32) to 4 times (fp16) slower. PyTorch embeds the code object through `hsaco.inc` and uses it for fp16 and fp32 `mm`, `addmm`, `bmm`, `baddbmm`, and `nn.Linear` forward and backward.

The kernels compute column-major, strided batched `C = alpha * op(A) * op(B) + beta * C` in three types:

- HHS: fp16 inputs and output with fp32 accumulation. This is the PyTorch default for fp16.
- HHH: fp16 accumulation. PyTorch uses it only when `torch.backends.cuda.matmul.allow_fp16_accumulation` is set and `PYTORCH_GFX1010_HGEMM_FP16_ACC=1`. gfx1010 has no dot2 instructions, so every FMA rounds to fp16; with all-positive inputs at K = 4096 the sums come out about 7% low.
- SSS: fp32.

Each type has an NN, a TN, and an NT kernel in a small and a large tile, listed in `gfx1010/asm_gemm/kernels.json`. TT problems, and problems with M or N below 16, stay on rocBLAS.

All kernels are wave32, with ShiftPtr edges and a K loop tail, StaggerU 32, StaggerUMapping 3, and WorkGroupMapping 8. StaggerUMapping 3 offsets the K start of each workgroup by its serial id. Tensile's default mapping uses the first workgroup index only, so a grid with a single workgroup row (for example attention P@V with head dim 64) was not staggered at all, and it ran 2 to 4 times slower whenever an operand's column stride was a multiple of 2 KB.

Measured through `torch` on an RX 5700 XT, in TFLOPS. Peak is about 19.5 for fp16 and 9.75 for fp32.

| Problem | rocBLAS | HHS or SSS | HHH |
| --- | --- | --- | --- |
| fp16 `a @ b`, 4096 | 4.40 | 9.44 | 16.93 |
| fp16 `nn.Linear` 4096 to 4096, 2048 tokens, forward | 2.78 | 7.29 | 12.33 |
| fp16 `nn.Linear` 4096 to 4096, 2048 tokens, weight gradient | 0.09 | 9.47 | 17.89 |
| fp16 attention P@V, 16 x 1024 x 1024 x 64 | 1.88 | 4.44 | 7.41 |
| fp32 `a @ b`, 4096 | 5.57 | 8.67 | |
| fp32 `nn.Linear` 4096 to 4096, 2048 tokens, forward | 3.93 | 6.51 | |
| fp32 attention P@V, 16 x 1024 x 1024 x 64 | 0.99 | 3.97 | |

The kernels were generated with Tensile 4.44.0 (ROCm/Tensile `e8a8999`) from `configs/gfx1010_asm_gemm.yaml`. To regenerate them, run Tensile on that config, update `kernels.json` if the winning tiles change, and pack the result:

```
python tools/pack_gfx1010_asm_gemm.py --clang <ROCm>/lib/llvm/bin/clang++ --tensile-dir <Tensile output directory>
```

The script copies the kernel sources into `gfx1010/asm_gemm/src/`, assembles and links them with Tensile's flags, and rewrites `hsaco.inc`.

`tools/check_gfx1010_asm_gemm.py` checks the kernels through a PyTorch build that embeds `hsaco.inc`. It compares fp16 and fp32 `mm`, `addmm`, `bmm`, `baddbmm` and `nn.Linear` with a float64 CPU reference. Point `CUDA_VISIBLE_DEVICES` at an RX 5700 XT. `PYTORCH_GFX1010_HGEMM_FP16_ACC=1` also checks the fp16-accumulation kernels.
