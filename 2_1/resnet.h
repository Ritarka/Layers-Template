///////////////////////////////////////////////////////////////////////////////
// Filename:    resnet.h
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////

#ifndef RESNET_H_
#define RESNET_H_

#include <iostream>
#include <ap_fixed.h>

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
#define IN_FM_DEPTH       128
#define IN_FM_HEIGHT       92
#define IN_FM_WIDTH       160

#define OUT_FM_DEPTH      128
#define OUT_FM_HEIGHT      92
#define OUT_FM_WIDTH      160

#define STRIDE            1
#define PADDING_2         1 
#define KERNEL_HEIGHT     3
#define KERNEL_WIDTH      3

#define FM false
#define WT true

//--------------------------------------------------------------------------
// Divide the input image into multiple tiles 
//--------------------------------------------------------------------------
#define TILE_HEIGHT       92
#define TILE_WIDTH       160

#define N_TILE_ROWS (int) IN_FM_HEIGHT / TILE_HEIGHT
#define N_TILE_COLS (int) IN_FM_WIDTH  / TILE_WIDTH

#define MARGIN            PADDING_2*2

//--------------------------------------------------------------------------
// Input tile buffer dimensions 
//--------------------------------------------------------------------------
//#define IN_BUF_DEPTH      3
#define IN_BUF_HEIGHT     TILE_HEIGHT + MARGIN 
#define IN_BUF_WIDTH      TILE_WIDTH  + MARGIN 

//--------------------------------------------------------------------------
// Output tile buffer dimensions 
//--------------------------------------------------------------------------
//#define OUT_BUF_DEPTH     4
#define OUT_BUF_HEIGHT    TILE_HEIGHT / STRIDE
#define OUT_BUF_WIDTH     TILE_WIDTH  / STRIDE

//--------------------------------------------------------------------------
// Top-level Function Declaration
//--------------------------------------------------------------------------
void layer_top (
    fm_t input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
    wt_t layer_weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    //bool skip_idx[OUT_FM_DEPTH][IN_FM_DEPTH],
    wt_t layer_bias[OUT_FM_DEPTH],
    fm_t output_feature_map[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH]
);

#endif
