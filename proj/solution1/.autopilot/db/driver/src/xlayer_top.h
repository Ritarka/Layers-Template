// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1.1 (64-bit)
// Tool Version Limit: 2023.06
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLAYER_TOP_H
#define XLAYER_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xlayer_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XLayer_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLayer_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLayer_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLayer_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLayer_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLayer_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLayer_top_Initialize(XLayer_top *InstancePtr, u16 DeviceId);
XLayer_top_Config* XLayer_top_LookupConfig(u16 DeviceId);
int XLayer_top_CfgInitialize(XLayer_top *InstancePtr, XLayer_top_Config *ConfigPtr);
#else
int XLayer_top_Initialize(XLayer_top *InstancePtr, const char* InstanceName);
int XLayer_top_Release(XLayer_top *InstancePtr);
#endif

void XLayer_top_Start(XLayer_top *InstancePtr);
u32 XLayer_top_IsDone(XLayer_top *InstancePtr);
u32 XLayer_top_IsIdle(XLayer_top *InstancePtr);
u32 XLayer_top_IsReady(XLayer_top *InstancePtr);
void XLayer_top_EnableAutoRestart(XLayer_top *InstancePtr);
void XLayer_top_DisableAutoRestart(XLayer_top *InstancePtr);

void XLayer_top_Set_input_feature_map(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_input_feature_map(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_weights_1(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_weights_1(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_bias_1(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_bias_1(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_weights_2(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_weights_2(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_bias_2(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_bias_2(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_weights_3(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_weights_3(XLayer_top *InstancePtr);
void XLayer_top_Set_layer_bias_3(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_layer_bias_3(XLayer_top *InstancePtr);
void XLayer_top_Set_output_feature_map(XLayer_top *InstancePtr, u64 Data);
u64 XLayer_top_Get_output_feature_map(XLayer_top *InstancePtr);

void XLayer_top_InterruptGlobalEnable(XLayer_top *InstancePtr);
void XLayer_top_InterruptGlobalDisable(XLayer_top *InstancePtr);
void XLayer_top_InterruptEnable(XLayer_top *InstancePtr, u32 Mask);
void XLayer_top_InterruptDisable(XLayer_top *InstancePtr, u32 Mask);
void XLayer_top_InterruptClear(XLayer_top *InstancePtr, u32 Mask);
u32 XLayer_top_InterruptGetEnabled(XLayer_top *InstancePtr);
u32 XLayer_top_InterruptGetStatus(XLayer_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
