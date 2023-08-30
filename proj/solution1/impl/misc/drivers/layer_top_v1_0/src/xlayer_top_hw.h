// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1.1 (64-bit)
// Tool Version Limit: 2023.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_feature_map
//        bit 31~0 - input_feature_map[31:0] (Read/Write)
// 0x14 : Data signal of input_feature_map
//        bit 31~0 - input_feature_map[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of layer_weights_1
//        bit 31~0 - layer_weights_1[31:0] (Read/Write)
// 0x20 : Data signal of layer_weights_1
//        bit 31~0 - layer_weights_1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of layer_bias_1
//        bit 31~0 - layer_bias_1[31:0] (Read/Write)
// 0x2c : Data signal of layer_bias_1
//        bit 31~0 - layer_bias_1[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of layer_weights_2
//        bit 31~0 - layer_weights_2[31:0] (Read/Write)
// 0x38 : Data signal of layer_weights_2
//        bit 31~0 - layer_weights_2[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of layer_bias_2
//        bit 31~0 - layer_bias_2[31:0] (Read/Write)
// 0x44 : Data signal of layer_bias_2
//        bit 31~0 - layer_bias_2[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of layer_weights_3
//        bit 31~0 - layer_weights_3[31:0] (Read/Write)
// 0x50 : Data signal of layer_weights_3
//        bit 31~0 - layer_weights_3[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of layer_bias_3
//        bit 31~0 - layer_bias_3[31:0] (Read/Write)
// 0x5c : Data signal of layer_bias_3
//        bit 31~0 - layer_bias_3[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of output_feature_map
//        bit 31~0 - output_feature_map[31:0] (Read/Write)
// 0x68 : Data signal of output_feature_map
//        bit 31~0 - output_feature_map[63:32] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLAYER_TOP_CONTROL_ADDR_AP_CTRL                 0x00
#define XLAYER_TOP_CONTROL_ADDR_GIE                     0x04
#define XLAYER_TOP_CONTROL_ADDR_IER                     0x08
#define XLAYER_TOP_CONTROL_ADDR_ISR                     0x0c
#define XLAYER_TOP_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA  0x10
#define XLAYER_TOP_CONTROL_BITS_INPUT_FEATURE_MAP_DATA  64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_1_DATA    0x1c
#define XLAYER_TOP_CONTROL_BITS_LAYER_WEIGHTS_1_DATA    64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_1_DATA       0x28
#define XLAYER_TOP_CONTROL_BITS_LAYER_BIAS_1_DATA       64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_2_DATA    0x34
#define XLAYER_TOP_CONTROL_BITS_LAYER_WEIGHTS_2_DATA    64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_2_DATA       0x40
#define XLAYER_TOP_CONTROL_BITS_LAYER_BIAS_2_DATA       64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_3_DATA    0x4c
#define XLAYER_TOP_CONTROL_BITS_LAYER_WEIGHTS_3_DATA    64
#define XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_3_DATA       0x58
#define XLAYER_TOP_CONTROL_BITS_LAYER_BIAS_3_DATA       64
#define XLAYER_TOP_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA 0x64
#define XLAYER_TOP_CONTROL_BITS_OUTPUT_FEATURE_MAP_DATA 64

