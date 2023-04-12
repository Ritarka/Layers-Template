///////////////////////////////////////////////////////////////////////////////
// Filename:    conv_3x3.cpp
// Author:      Akshay Karkal Kamath
// Description: TODO
///////////////////////////////////////////////////////////////////////////////

#include "conv.h"

void conv_1x1 (
    fm_t Y_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
    fm_t X_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH],
    wt_t W_buf[KERNEL_HEIGHT][KERNEL_WIDTH],
    //int  c_init,
    int  c
)
{
    KH: 
    for(int m = 0; m < KERNEL_HEIGHT; m++) 
    {
        KW: 
        for(int n = 0; n < KERNEL_WIDTH; n++) 
        {
            OH: 
            for(int i = 0; i < TILE_HEIGHT; i+=STRIDE) 
            {
#pragma HLS pipeline
                OW: 
                for(int j = 0; j < TILE_WIDTH; j+=STRIDE) 
                {
                    //if(c==c_init && m==0 && n==0)
                    if(c==0 && m==0 && n==0)
                        Y_buf[i/STRIDE][j/STRIDE]  = X_buf[i+m][j+n] * W_buf[m][n];
                    else
                        Y_buf[i/STRIDE][j/STRIDE] += X_buf[i+m][j+n] * W_buf[m][n];
                }
            }
        }
    }
}
