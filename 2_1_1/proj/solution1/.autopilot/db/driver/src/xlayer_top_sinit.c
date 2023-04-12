// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xlayer_top.h"

extern XLayer_top_Config XLayer_top_ConfigTable[];

XLayer_top_Config *XLayer_top_LookupConfig(u16 DeviceId) {
	XLayer_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLAYER_TOP_NUM_INSTANCES; Index++) {
		if (XLayer_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLayer_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLayer_top_Initialize(XLayer_top *InstancePtr, u16 DeviceId) {
	XLayer_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLayer_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLayer_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

