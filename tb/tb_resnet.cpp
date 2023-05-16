///////////////////////////////////////////////////////////////////////////////
// Filename:    tb_resnet.cpp
// Author:      Akshay Karkal Kamath
// Description: TODO 
///////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <fstream>
#include <cmath>

#include "resnet.h"
// #include "layer3/layer3.h"
#include "tb_utils.h"
#include "tb_utils.cpp"

using namespace std;

//--------------------------------------------------------------------------
// Convolution layer inputs, parameters, and reference output
//--------------------------------------------------------------------------
fm_t  input_feature_map[512][92][160];
fm_t  output_feature_map[128][92][160] = {0};

wt_t  layer_weights_1[128][512][1][1];
wt_t  layer_bias_1[128];


wt_t  layer_weights_2[128][128][3][3];
wt_t  layer_bias_2[128];

wt_t layer_weights_3[512][128][1][1];
wt_t layer_bias_3[512];


// float layer_golden_out[layer_3::OUT_FM_DEPTH][92][160];
float layer_golden_out[128][92][160];


//bool  skip_idx[OUT_FM_DEPTH][IN_FM_DEPTH];   

//--------------------------------------------------------------------------
// Read the reference files into test bench arrays
//--------------------------------------------------------------------------
void read_bin_files()
{
    Load_3D_Tensor<512, 92, 160, fm_t>
        (RESNET_L2_0_3_OUT_FM, input_feature_map, FM);



    Load_4D_Tensor<128, 512, 1, 1, wt_t>
        (RESNET_L2_1_1_WEIGHT, layer_weights_1, WT);

    Load_1D_Tensor<128, wt_t>
        (RESNET_L2_1_1_BIAS, layer_bias_1, WT);


    Load_4D_Tensor<128, 128, 3, 3, wt_t>
        (RESNET_L2_1_2_WEIGHT, layer_weights_2, WT);

    Load_1D_Tensor<128, wt_t>
        (RESNET_L2_1_2_BIAS, layer_bias_2, WT);



    Load_4D_Tensor<512, 128, 1, 1, wt_t>
        (RESNET_L2_1_3_WEIGHT, layer_weights_3, WT);

    Load_1D_Tensor<512, wt_t>
        (RESNET_L2_1_3_BIAS, layer_bias_3, WT);



    Load_3D_Tensor<128, 92, 160, fm_t> 
        (RESNET_L2_1_2_OUT_FM, layer_golden_out, FM);
    
    //Load_2D_Tensor_New<OUT_FM_DEPTH, IN_FM_DEPTH, bool>
    //    ("/usr/scratch/akamath47/IP2/py_test/skip_idx_1_0_2.bin", skip_idx);
    
    //int f = 0;
    //std::cout << skip_idx[f][0] << skip_idx[f][1] << skip_idx[f][2] << std::endl;
}

int main ()
{
    long double mse = 0.0;
    
    // Read reference inputs, parameters, and output
    read_bin_files();
   
    std::cout << "Beginning HLS tiled-convolution simulation..." << std::endl;
    
    layer_top (input_feature_map,

               layer_weights_1,
               layer_bias_1,

               layer_weights_2,
               layer_bias_2,

               layer_weights_3,
               layer_bias_3,

               output_feature_map
    );
    
    std::cout << "Tiled-convolution simulation complete!\n" << std::endl;
    
    // mse = Compare_3D_Tensors<layer_3::OUT_FM_DEPTH, 92, 160, fm_t> 
    mse = Compare_3D_Tensors<128, 92, 160, fm_t> 
             (layer_golden_out, output_feature_map);

    std::cout << "\nOutput MSE:  " << mse << std::endl;
    
    std::cout << "----------------------------------------" << std::endl;
    #ifdef CSIM_DEBUG
        if(mse > 0 && mse < 2 * std::pow(10,-8))
        {
            std::cout << "Floating-point Simulation SUCCESSFUL!!!" << std::endl;
        }
        else
        {
            std::cout << "Floating-point Simulation FAILED :(" << std::endl;
        }
    #else
        if(mse > 0 && mse < std::pow(10,-3))
        {
            std::cout << "Fixed-point Simulation SUCCESSFUL!!!" << std::endl;
        }
        else
        {
            std::cout << "Fixed-point Simulation FAILED :(" << std::endl;
        }
    #endif
    std::cout << "----------------------------------------" << std::endl;

    return 0;
}
