///////////////////////////////////////////////////////////////////////////////
// Filename:    tb_utils.h
// Author:      Akshay Karkal Kamath
// Description: TODO
///////////////////////////////////////////////////////////////////////////////

#ifndef TB_UTILS_H_
#define TB_UTILS_H_

//------------------------------------------------------------------------
// File Paths
//------------------------------------------------------------------------
#define FM_FILEPATH "/usr/scratch/akamath47/IP2/Demo/bin/unpruned_qdtrack_final_outputs/"
#define WT_FILEPATH "/usr/scratch/akamath47/IP2/Demo/bin/unpruned_qdtrack_final_params/"
//#define FM_FILEPATH "/usr/scratch/akamath47/IP2/Demo/bin/pruned_qdtrack_final_outputs/"
//#define WT_FILEPATH "/usr/scratch/akamath47/IP2/Demo/bin/pruned_qdtrack_final_params/"

//------------------------------------------------------------------------
// Model Feature Map Files
//------------------------------------------------------------------------

// Layer 0
#define RESNET_L0_IN_FM       "module.input.image.bin"
#define RESNET_L0_CONV_OUT_FM "module.backbone.bn1.bin"
#define RESNET_L0_MX_OUT_FM   "module.backbone.maxpool.bin"

// Bottleneck Layer 1
#define RESNET_L1_0_0_OUT_FM  "module.backbone.layer1.0.downsample.1.bin"
#define RESNET_L1_0_1_OUT_FM  "module.backbone.layer1.0.bn1.bin"
#define RESNET_L1_0_2_OUT_FM  "module.backbone.layer1.0.bn2.bin"
#define RESNET_L1_0_3_OUT_FM  "module.backbone.layer1.0.bn3.bin"

#define RESNET_L1_1_1_OUT_FM  "module.backbone.layer1.1.bn1.bin"
#define RESNET_L1_1_2_OUT_FM  "module.backbone.layer1.1.bn2.bin"
#define RESNET_L1_1_3_OUT_FM  "module.backbone.layer1.1.bn3.bin"

#define RESNET_L1_2_1_OUT_FM  "module.backbone.layer1.2.bn1.bin"
#define RESNET_L1_2_2_OUT_FM  "module.backbone.layer1.2.bn2.bin"
#define RESNET_L1_2_3_OUT_FM  "module.backbone.layer1.2.bn3.bin"

// Bottleneck Layer 2
#define RESNET_L2_0_0_OUT_FM  "module.backbone.layer2.0.downsample.1.bin"
#define RESNET_L2_0_1_OUT_FM  "module.backbone.layer2.0.bn1.bin"
#define RESNET_L2_0_2_OUT_FM  "module.backbone.layer2.0.bn2.bin"
#define RESNET_L2_0_3_OUT_FM  "module.backbone.layer2.0.bn3.bin"

#define RESNET_L2_1_1_OUT_FM  "module.backbone.layer2.1.bn1.bin"
#define RESNET_L2_1_2_OUT_FM  "module.backbone.layer2.1.bn2.bin"
#define RESNET_L2_1_3_OUT_FM  "module.backbone.layer2.1.bn3.bin"

#define RESNET_L2_2_1_OUT_FM  "module.backbone.layer2.2.bn1.bin"
#define RESNET_L2_2_2_OUT_FM  "module.backbone.layer2.2.bn2.bin"
#define RESNET_L2_2_3_OUT_FM  "module.backbone.layer2.2.bn3.bin"

#define RESNET_L2_3_1_OUT_FM  "module.backbone.layer2.3.bn1.bin"
#define RESNET_L2_3_2_OUT_FM  "module.backbone.layer2.3.bn2.bin"
#define RESNET_L2_3_3_OUT_FM  "module.backbone.layer2.3.bn3.bin"

//------------------------------------------------------------------------
// Model Parameter Files
//------------------------------------------------------------------------
#define RESNET_L0_BIAS        "module.backbone.conv1.fused_bias.bin"
#define RESNET_L0_WEIGHT      "module.backbone.conv1.fused_weight.bin"

// Bottleneck Layer 1
#define RESNET_L1_0_0_BIAS    "module.backbone.layer1.0.downsample.0.fused_bias.bin"
#define RESNET_L1_0_0_WEIGHT  "module.backbone.layer1.0.downsample.0.fused_weight.bin"

#define RESNET_L1_0_1_BIAS    "module.backbone.layer1.0.conv1.fused_bias.bin"
#define RESNET_L1_0_1_WEIGHT  "module.backbone.layer1.0.conv1.fused_weight.bin"
#define RESNET_L1_0_2_BIAS    "module.backbone.layer1.0.conv2.fused_bias.bin"
#define RESNET_L1_0_2_WEIGHT  "module.backbone.layer1.0.conv2.fused_weight.bin"
#define RESNET_L1_0_3_BIAS    "module.backbone.layer1.0.conv3.fused_bias.bin"
#define RESNET_L1_0_3_WEIGHT  "module.backbone.layer1.0.conv3.fused_weight.bin"

#define RESNET_L1_1_1_BIAS    "module.backbone.layer1.1.conv1.fused_bias.bin"
#define RESNET_L1_1_1_WEIGHT  "module.backbone.layer1.1.conv1.fused_weight.bin"
#define RESNET_L1_1_2_BIAS    "module.backbone.layer1.1.conv2.fused_bias.bin"
#define RESNET_L1_1_2_WEIGHT  "module.backbone.layer1.1.conv2.fused_weight.bin"
#define RESNET_L1_1_3_BIAS    "module.backbone.layer1.1.conv3.fused_bias.bin"
#define RESNET_L1_1_3_WEIGHT  "module.backbone.layer1.1.conv3.fused_weight.bin"

#define RESNET_L1_2_1_BIAS    "module.backbone.layer1.2.conv1.fused_bias.bin"
#define RESNET_L1_2_1_WEIGHT  "module.backbone.layer1.2.conv1.fused_weight.bin"
#define RESNET_L1_2_2_BIAS    "module.backbone.layer1.2.conv2.fused_bias.bin"
#define RESNET_L1_2_2_WEIGHT  "module.backbone.layer1.2.conv2.fused_weight.bin"
#define RESNET_L1_2_3_BIAS    "module.backbone.layer1.2.conv3.fused_bias.bin"
#define RESNET_L1_2_3_WEIGHT  "module.backbone.layer1.2.conv3.fused_weight.bin"

// Bottleneck Layer 2
#define RESNET_L2_0_0_BIAS    "module.backbone.layer2.0.downsample.0.fused_bias.bin"
#define RESNET_L2_0_0_WEIGHT  "module.backbone.layer2.0.downsample.0.fused_weight.bin"

#define RESNET_L2_0_1_BIAS    "module.backbone.layer2.0.conv1.fused_bias.bin"
#define RESNET_L2_0_1_WEIGHT  "module.backbone.layer2.0.conv1.fused_weight.bin"
#define RESNET_L2_0_2_BIAS    "module.backbone.layer2.0.conv2.fused_bias.bin"
#define RESNET_L2_0_2_WEIGHT  "module.backbone.layer2.0.conv2.fused_weight.bin"
#define RESNET_L2_0_3_BIAS    "module.backbone.layer2.0.conv3.fused_bias.bin"
#define RESNET_L2_0_3_WEIGHT  "module.backbone.layer2.0.conv3.fused_weight.bin"

#define RESNET_L2_1_1_BIAS    "module.backbone.layer2.1.conv1.fused_bias.bin"
#define RESNET_L2_1_1_WEIGHT  "module.backbone.layer2.1.conv1.fused_weight.bin"
#define RESNET_L2_1_2_BIAS    "module.backbone.layer2.1.conv2.fused_bias.bin"
#define RESNET_L2_1_2_WEIGHT  "module.backbone.layer2.1.conv2.fused_weight.bin"
#define RESNET_L2_1_3_BIAS    "module.backbone.layer2.1.conv3.fused_bias.bin"
#define RESNET_L2_1_3_WEIGHT  "module.backbone.layer2.1.conv3.fused_weight.bin"

#define RESNET_L2_2_1_BIAS    "module.backbone.layer2.2.conv1.fused_bias.bin"
#define RESNET_L2_2_1_WEIGHT  "module.backbone.layer2.2.conv1.fused_weight.bin"
#define RESNET_L2_2_2_BIAS    "module.backbone.layer2.2.conv2.fused_bias.bin"
#define RESNET_L2_2_2_WEIGHT  "module.backbone.layer2.2.conv2.fused_weight.bin"
#define RESNET_L2_2_3_BIAS    "module.backbone.layer2.2.conv3.fused_bias.bin"
#define RESNET_L2_2_3_WEIGHT  "module.backbone.layer2.2.conv3.fused_weight.bin"

#define RESNET_L2_3_1_BIAS    "module.backbone.layer2.3.conv1.fused_bias.bin"
#define RESNET_L2_3_1_WEIGHT  "module.backbone.layer2.3.conv1.fused_weight.bin"
#define RESNET_L2_3_2_BIAS    "module.backbone.layer2.3.conv2.fused_bias.bin"
#define RESNET_L2_3_2_WEIGHT  "module.backbone.layer2.3.conv2.fused_weight.bin"
#define RESNET_L2_3_3_BIAS    "module.backbone.layer2.3.conv3.fused_bias.bin"
#define RESNET_L2_3_3_WEIGHT  "module.backbone.layer2.3.conv3.fused_weight.bin"

// Utility Function Declarations
template<const int W, typename T>
void Load_1D_Tensor(std::string filename, T tensor[W], bool param);

template<const int H, const int W, typename T>
void Load_2D_Tensor(std::string filename, T tensor[H][W], bool param);

template<const int H, const int W, typename T>
void Load_2D_Tensor_New(std::string filename, T tensor[H][W]);

template<const int D, const int H, const int W, typename T>
void Load_3D_Tensor(std::string filename, T tensor[D][H][W], bool param);

template<const int B, const int D, const int H, const int W, typename T>
void Load_4D_Tensor(std::string filename, T tensor[B][D][H][W], bool param);

template<const int D, const int H, const int W, typename T>
long double Compare_3D_Tensors(float expected[D][H][W], T actual[D][H][W]);

#endif
