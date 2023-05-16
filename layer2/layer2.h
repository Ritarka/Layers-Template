///////////////////////////////////////////////////////////////////////////////
// Filename:    resnet.h
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////

#pragma once

#include <iostream>
#include <ap_fixed.h>

namespace layer_2 {

    //--------------------------------------------------------------------------
    // Type conversions for simulation and synthesis
    //--------------------------------------------------------------------------
    #ifdef  CSIM_DEBUG
        typedef float fm_t;
        typedef float wt_t;
    #else
        typedef ap_fixed<16,3> fm_t;
        typedef ap_fixed<16,3> wt_t;
    #endif


    //--------------------------------------------------------------------------
    // Layer Configuration  
    //--------------------------------------------------------------------------
   const int IN_FM_DEPTH = 128;
    const int IN_FM_HEIGHT = 92;
    const int IN_FM_WIDTH = 160;

    const int OUT_FM_DEPTH = 128;
    const int OUT_FM_HEIGHT = 92;
    const int OUT_FM_WIDTH = 160;

    const int STRIDE = 1;
    const int PADDING = 1; 
    const int KERNEL_HEIGHT = 3;
    const int KERNEL_WIDTH = 3;

    const bool FM = false;
    const bool WT = true;

    //--------------------------------------------------------------------------
    // Divide the input image into multiple tiles 
    //--------------------------------------------------------------------------
    const int TILE_HEIGHT = 92;
    const int TILE_WIDTH = 160;

    const int N_TILE_ROWS = (int) IN_FM_HEIGHT / TILE_HEIGHT;
    const int N_TILE_COLS = (int) IN_FM_WIDTH  / TILE_WIDTH;

    const int MARGIN = PADDING*2;

    //--------------------------------------------------------------------------
    // Input tile buffer dimensions 
    //--------------------------------------------------------------------------
    //#define IN_BUF_DEPTH      3
    const int IN_BUF_HEIGHT = TILE_HEIGHT + MARGIN; 
    const int IN_BUF_WIDTH = TILE_WIDTH  + MARGIN;

    //--------------------------------------------------------------------------
    // Output tile buffer dimensions 
    //--------------------------------------------------------------------------
    //#define OUT_BUF_DEPTH     4
    const int OUT_BUF_HEIGHT = TILE_HEIGHT / STRIDE;
    const int OUT_BUF_WIDTH = TILE_WIDTH  / STRIDE;

    //--------------------------------------------------------------------------
    // Top-level Function Declaration
    //--------------------------------------------------------------------------
    void layer2 (
        fm_t input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
        wt_t layer_weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
        //bool skip_idx[OUT_FM_DEPTH][IN_FM_DEPTH],
        wt_t layer_bias[OUT_FM_DEPTH],
        fm_t output_feature_map[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH]
    );

    static void conv (
        fm_t Y_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
        fm_t X_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH],
        wt_t W_buf[KERNEL_HEIGHT][KERNEL_WIDTH],
        //int  c_init,
        int  c
    );

    void load_input_tile_slice (
        fm_t in_fm_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH], 
        fm_t in_fm[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH], 
        int  ti, 
        int  tj,
        int  c 
    );

    void load_weight_slice (
        wt_t weight_buf[KERNEL_HEIGHT][KERNEL_WIDTH],
        wt_t weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
        int  f,
        int  c
    );

    void load_bias (
        wt_t bias_buf[OUT_FM_DEPTH],
        wt_t bias[OUT_FM_DEPTH]
    );

    void store_output_tile_slice (
        fm_t out_fm[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH], 
        fm_t out_fm_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
        wt_t bias_buf[OUT_FM_DEPTH],
        //bool kernel_pruned,
        int  ti,
        int  tj,
        int  f
    );
}