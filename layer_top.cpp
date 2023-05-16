///////////////////////////////////////////////////////////////////////////////
// Filename:    conv_7x7_top.cpp
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////


#include "resnet.h"
#include "layer1/layer1.h"
#include "layer2/layer2.h"
// #include "layer3/layer3.h"


void layer_top (
    fm_t input_feature_map[512][92][160],

    wt_t layer_weights_1[128][512][1][1],
    wt_t layer_bias_1[128],

    wt_t layer_weights_2[128][128][3][3],
    wt_t layer_bias_2[128],

    wt_t layer_weights_3[512][128][1][1],
    wt_t layer_bias_3[512],


    fm_t output_feature_map[128][92][160]
)
{
    //--------------------------------------------------------------------------
    // Defines interface IO ports for HLS. 
    //--------------------------------------------------------------------------
    #pragma HLS INTERFACE m_axi depth=1  port=input_feature_map   bundle=fm
    #pragma HLS INTERFACE m_axi depth=1  port=output_feature_map  bundle=fm

    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights_1     bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=layer_bias_1        bundle=wt

    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights_2     bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=layer_bias_2        bundle=wt

    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights_3     bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=layer_bias_3        bundle=wt

    
    #pragma HLS INTERFACE s_axilite register	port=return


    fm_t layer1_fm_buf[layer_1::OUT_FM_DEPTH][92][160] = {0};
    fm_t layer2_fm_buf[128][92][160] = {0};

    layer_1::layer1(
        input_feature_map,
        layer_weights_1,
        //skip_idx,
        layer_bias_1,
        layer1_fm_buf
    );

    layer_2::layer2(
        layer1_fm_buf,
        layer_weights_2,
        //skip_idx,
        layer_bias_2,
        layer2_fm_buf
    );

    // for (int i = 0; i < 128; i++)
    //     for (int j = 0; j < 92; j++)
    //         for (int k = 0; k < 160; k++)
    //             output_feature_map[i][j][k] = 1;

    // layer_3::layer3(
    //     layer2_fm_buf,
    //     layer_weights_3,
    //     //skip_idx,
    //     layer_bias_3,
    //     output_feature_map,
    //     input_feature_map
    // );

    

}