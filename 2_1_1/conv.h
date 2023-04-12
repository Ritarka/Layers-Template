///////////////////////////////////////////////////////////////////////////////
// Filename:    conv.h
// Author:      Akshay Karkal Kamath
// Description: TODO
///////////////////////////////////////////////////////////////////////////////

#include "resnet.h"

void conv_1x1 (
    fm_t Y_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
    fm_t X_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH],
    wt_t W_buf[KERNEL_HEIGHT][KERNEL_WIDTH],
    //int  c_init,
    int  c
);
