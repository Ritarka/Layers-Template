// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1.1 (64-bit)
// Tool Version Limit: 2023.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlayer_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLayer_top_CfgInitialize(XLayer_top *InstancePtr, XLayer_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLayer_top_Start(XLayer_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLayer_top_IsDone(XLayer_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLayer_top_IsIdle(XLayer_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLayer_top_IsReady(XLayer_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLayer_top_EnableAutoRestart(XLayer_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLayer_top_DisableAutoRestart(XLayer_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XLayer_top_Set_input_feature_map(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_input_feature_map(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_weights_1(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_1_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_1_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_weights_1(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_1_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_1_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_bias_1(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_1_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_1_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_bias_1(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_1_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_1_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_weights_2(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_2_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_2_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_weights_2(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_2_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_2_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_bias_2(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_2_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_2_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_bias_2(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_2_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_2_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_weights_3(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_3_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_3_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_weights_3(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_3_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_WEIGHTS_3_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_layer_bias_3(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_3_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_3_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_layer_bias_3(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_3_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_LAYER_BIAS_3_DATA + 4) << 32;
    return Data;
}

void XLayer_top_Set_output_feature_map(XLayer_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA, (u32)(Data));
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XLayer_top_Get_output_feature_map(XLayer_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA);
    Data += (u64)XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XLayer_top_InterruptGlobalEnable(XLayer_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_GIE, 1);
}

void XLayer_top_InterruptGlobalDisable(XLayer_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_GIE, 0);
}

void XLayer_top_InterruptEnable(XLayer_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_IER);
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XLayer_top_InterruptDisable(XLayer_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_IER);
    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLayer_top_InterruptClear(XLayer_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLayer_top_WriteReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XLayer_top_InterruptGetEnabled(XLayer_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_IER);
}

u32 XLayer_top_InterruptGetStatus(XLayer_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLayer_top_ReadReg(InstancePtr->Control_BaseAddress, XLAYER_TOP_CONTROL_ADDR_ISR);
}

