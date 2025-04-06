
# 🔲 Sobel Edge Detection on FPGA Using HDL

This project implements the Sobel edge detection algorithm using hardware description language (HDL), targeting real-time edge detection on grayscale images. It showcases how programmable logic can be used to parallelize image processing, specifically using convolution-based gradient filters to detect edges.

---

## 🎯 Objective

To detect sharp changes in image intensity (edges) by implementing Sobel convolution kernels in hardware using FPGA. The system receives a grayscale image, computes horizontal and vertical gradients, applies a threshold, and produces a binary edge map.

---

## 📐 Digital Image Representation

- An image is a 2D matrix of pixels defined by spatial coordinates (x, y).
- Each pixel contains an **intensity value** in grayscale ranging from 0 (black) to 255 (white).
- The image has **M rows** and **N columns**, represented as a matrix.

---

## ⚙️ Sobel Algorithm Overview

Sobel detection uses two 3×3 kernels (derivative filters) to approximate gradient magnitude:

### Gx (horizontal edges):
```
[ +1  0  -1 ]
[ +2  0  -2 ]
[ +1  0  -1 ]
```

### Gy (vertical edges):
```
[ -1  -2  -1 ]
[  0   0   0 ]
[ +1  +2  +1 ]
```

### Gradient Magnitude:
```
|G| = |Gx| + |Gy|
```

A threshold `T` is applied to classify edge presence:
- If `|G| > T`: output = 1 (edge)
- Else: output = 0

---

## 🔄 Kernel Derivation Steps

1. Start with a basic differential kernel: `[+1 0 -1]`
2. Convolve with `[+1 +2 +1]^T` for smoothing (Gaussian approximation)
3. Final Gx and Gy kernels are constructed by multiplying these filters

This results in the two standard Sobel kernels described above.

---

## 🖥 Input / Output

- **Input**: Grayscale image (8-bit), size M × N
- **Output**: Binary image (1-bit per pixel) with detected edges

---

## 💡 Implementation on FPGA

- **Sliding Window**: 3×3 pixel region per computation cycle
- **Parallel Processing**: Using multiple cores (e.g., 16 in parallel)
- **Image Conversion**:
  - RGB → Grayscale using HLS (High-Level Synthesis)
- **Noise Handling**:
  - Zero-padding for border pixels
  - Truncation of out-of-range values back to 0–255 range
- **Thresholding**: Manual or adaptive value `T` input via FPGA interface

---

## 🔧 Tools & Technologies

- Language: VHDL or Verilog
- Platform: FPGA (e.g., Xilinx Artix, Spartan, Cyclone)
- Toolchain: Vivado, Quartus, or Intel HLS tools

---

## 🧪 Verification & Testing

- Simulated with predefined grayscale matrices
- Compared with OpenCV or MATLAB Sobel output
- Verified for proper convolution, edge localization, and thresholding

---

## 📷 Visual Concept

| Original Grayscale Image | Detected Edges (Binary) |
|--------------------------|--------------------------|
| Ball (smooth edges)      | Highlighted ball borders |

Edge locations are where intensity changes sharply—ideal for identifying object boundaries.

---

## 📄 License

This project is released under the MIT License for academic and research purposes.

---

## 👨‍💻 Author

Developed as part of a digital image processing and hardware acceleration course. Focused on applying fundamental algorithms in edge detection to real-time embedded systems using programmable logic.
