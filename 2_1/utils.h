///////////////////////////////////////////////////////////////////////////////
// Filename:    utils.h
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////

#include "resnet.h"

//--------------------------------------------------------------------------
// Function Declarations
//--------------------------------------------------------------------------
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
