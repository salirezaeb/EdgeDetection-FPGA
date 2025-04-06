
# ⚙️ Sobel Edge Detection on FPGA

This project implements the Sobel edge detection algorithm on an FPGA platform using hardware description language (HDL). It performs real-time detection of edges in grayscale images by approximating intensity gradients using convolution with Sobel kernels.

---

## 🎯 Objective

Detect image edges based on gradient magnitude and highlight them in a binary output image using hardware-accelerated logic.

---

## 📐 Sobel Kernels

**Gx**:
```
+1  0  -1
+2  0  -2
+1  0  -1
```

**Gy**:
```
-1  -2  -1
 0   0   0
+1  +2  +1
```

---

## 🧮 Edge Computation

```
|G| = |Gx| + |Gy|
```

Apply threshold `T`:
- If `|G| > T`: output = 1
- Else: output = 0

---

## 🖥 Input/Output

- **Input**: Grayscale image (8-bit)
- **Output**: Binary edge map (1-bit per pixel)

---

## 🔧 Implementation

- Sliding 3×3 pixel window
- HDL modules:
  - Input buffer
  - Convolution engine
  - Threshold unit
- Designed for synthesis on mid-range FPGAs

---

## 🧪 Testing

- Simulated with known grayscale input patterns
- Validated against software-based (OpenCV) Sobel results

---

## 🛠 Tools

- Language: VHDL / Verilog
- Toolchain: Xilinx Vivado, Intel Quartus

---

## 📄 License

MIT License – Educational use only

---

## 👨‍💻 Author

Developed as part of an image processing and FPGA hardware acceleration project.
