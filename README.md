# RDNA kernels

Tuned device code for the RX 6900 XT (gfx1030) and the RX 5700 XT (gfx1010). This repository is a PyTorch submodule. It is not a ROCm SDK. The SDK stays in TheRock.

## gfx1010 FP32 NN SGEMM

`gfx1010/fp32_sgemm_nn/` holds Tensile source kernels and the gfx1010 code object `Kernels.gfx1010.hsaco`. PyTorch loads that code object for column-major `C = alpha * A * B` when beta is 0.

Measured on an RX 5700 XT with the Tensile client (GPU time, result checked). rocBLAS fallback numbers are from `torch.mm` on the same card. Peak FP32 is about 9.75 TFLOPS.

| N | rocBLAS fallback | This code object | Tile |
| --- | --- | --- | --- |
| 1024 | 4.65 TFLOPS | 6.47 TFLOPS | 128x128x16 |
| 2048 | 5.79 TFLOPS | 6.39 TFLOPS | 256x128x16 |
| 4096 | 5.66 TFLOPS | 7.50 TFLOPS | 256x128x16 |

PyTorch uses the 256x128x16 tile when M is at least 2048 and the sizes match that tile. Smaller multiples of 128 use 128x128x16. The direct launch of both tiles matched NumPy on this machine (max abs error about 1e-3 at 4096).

The config used to generate the kernels is `configs/gfx1010_sgemm_nn.yaml`.

## gfx1010 FP16 NN HGEMM

`gfx1010/fp16_hgemm_nn/` is the same layout in fp16. Alpha is fp16. The winning tile is 256x128x16 at 1024, 2048, and 4096 (8.27 / 10.66 / 11.89 TFLOPS in the Tensile client). rocBLAS `torch.mm` on this card is about 4.1 to 4.5 TFLOPS. Global read width must be 8 for fp16.

## gfx1010 FP16 TN HGEMM

`gfx1010/fp16_hgemm_tn/` is column-major `C = A^T B`, which is the `nn.Linear` path. The 256x128x32 tile measured 8.64 TFLOPS on the Tensile problem (4096, 2048, 4096). `torch.nn.Linear` fp16 on the RX 5700 XT then measured 7.91 TFLOPS for batch 2048 and 8.29 TFLOPS for batch 4096, with features 4096. The previous Linear measurement on this card was 2.81 TFLOPS.
