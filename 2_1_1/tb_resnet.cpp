///////////////////////////////////////////////////////////////////////////////
// Filename:    tb_resnet.cpp
// Author:      Akshay Karkal Kamath
// Description: TODO 
///////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <fstream>
#include <cmath>

#include "resnet.h"
#include "tb_utils.h"
#include "tb_utils.cpp"

using namespace std;

//--------------------------------------------------------------------------
// Convolution layer inputs, parameters, and reference output
//--------------------------------------------------------------------------
fm_t  input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH];
wt_t  layer_weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH];
wt_t  layer_bias[OUT_FM_DEPTH];
fm_t  output_feature_map[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH] = {0};

float layer_golden_out[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH];

//bool  skip_idx[OUT_FM_DEPTH][IN_FM_DEPTH];   

//--------------------------------------------------------------------------
// Read the reference files into test bench arrays
//--------------------------------------------------------------------------
void read_bin_files()
{
    Load_3D_Tensor<IN_FM_DEPTH, IN_FM_HEIGHT, IN_FM_WIDTH, fm_t>
        (RESNET_L2_0_3_OUT_FM, input_feature_map, FM);

    Load_4D_Tensor<OUT_FM_DEPTH, IN_FM_DEPTH, KERNEL_HEIGHT, KERNEL_WIDTH, wt_t>
        (RESNET_L2_1_1_WEIGHT, layer_weights, WT);

    Load_1D_Tensor<OUT_FM_DEPTH, wt_t>
        (RESNET_L2_1_1_BIAS, layer_bias, WT);

    Load_3D_Tensor<OUT_FM_DEPTH, OUT_FM_HEIGHT, OUT_FM_WIDTH, fm_t> 
        (RESNET_L2_1_1_OUT_FM, layer_golden_out, FM);
    
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
               layer_weights,
               //skip_idx,
               layer_bias,
               output_feature_map
    );
    
    std::cout << "Tiled-convolution simulation complete!\n" << std::endl;
    
    mse = Compare_3D_Tensors<OUT_FM_DEPTH, OUT_FM_HEIGHT, OUT_FM_WIDTH, fm_t> 
             (layer_golden_out, output_feature_map);

    std::cout << "\nOutput MSE:  " << mse << std::endl;
    
    std::cout << "----------------------------------------" << std::endl;
    #ifdef CSIM_DEBUG
        if(mse > 0 && mse < std::pow(10,-8))
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
