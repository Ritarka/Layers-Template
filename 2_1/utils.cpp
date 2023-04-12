///////////////////////////////////////////////////////////////////////////////
// Course:      ECE8893 - Parallel Programming for FPGAs
// Filename:    utils.cpp
// Description: Utility functions to implement tiling-based convolution 
//
// Reference solution for Part C
///////////////////////////////////////////////////////////////////////////////
#include "resnet.h"
#include "utils.h"

//--------------------------------------------------------------------------
// Function to load an input tile block from from off-chip DRAM 
// to on-chip BRAM.
//--------------------------------------------------------------------------

template<const int IN_FM_DEPTH, const int PADDING>
void load_input_tile_slice (
    fm_t in_fm_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH], 
    fm_t in_fm[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH], 
    int  ti, 
    int  tj,
    int  c 
)
{
    const int height_offset = ti * TILE_HEIGHT;  
    const int width_offset  = tj * TILE_WIDTH;

    const int P = PADDING;
    const int S = STRIDE;    

    INPUT_BUFFER_HEIGHT:
    for(int i = 0; i < IN_BUF_HEIGHT; i++)
    {
        INPUT_BUFFER_WIDTH:
        for(int j = 0; j < IN_BUF_WIDTH; j++)
        {
            // For tiles in the first column and/or the first row, 
            // pad 3 zero columns to the left and/or 3 zero rows 
            // at the top (similar to Part A)
            if((ti == 0 && i < P) || (tj == 0 && j < P))
	        {
	            in_fm_buf[i][j] = (fm_t) 0;
	        }
            // For tiles in the last column and/or the last row, 
            // pad 3 zero columns to the right and/or 3 zero rows 
            // at the bottom (similar to Part A)
            else if(((ti == N_TILE_ROWS - 1) && (i > (TILE_HEIGHT + P - 1))) 
                 || ((tj == N_TILE_COLS - 1) && (j > (TILE_WIDTH  + P - 1))))
	        {
	            in_fm_buf[i][j] = (fm_t) 0;
	        }
            // For all other tiles, copy each feature as is from input feature map
	        else
	        {
                in_fm_buf[i][j] = in_fm[c][height_offset + i - P][width_offset + j - P];
	        }
        }
    }
}

//--------------------------------------------------------------------------
// Function to load layer parameters (weights and bias) for convolution.
//--------------------------------------------------------------------------
template<const int IN_FM_DEPTH, const int OUT_FM_DEPTH, const KERNEL_HEIGHT, const KERNEL_WIDTH>
void load_weight_slice (
    wt_t weight_buf[KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    int  f,
    int  c
)
{
//#pragma HLS inline off

    WEIGHT_KERNEL_HEIGHT:
    for(int kh = 0; kh < KERNEL_HEIGHT; kh++)
	{
        WEIGHT_KERNEL_WIDTH:
	    for(int kw = 0; kw < KERNEL_WIDTH; kw++)
	    {
	        weight_buf[kh][kw] = weights[f][c][kh][kw];
        }
    }
    
}

template<const int OUT_FM_DEPTH>
void load_bias (
    wt_t bias_buf[OUT_FM_DEPTH],
    wt_t bias[OUT_FM_DEPTH]
)
{
    BIAS_LOOP:
    for(int f = 0; f < OUT_FM_DEPTH; f++)
	{
        bias_buf[f] = bias[f];
    }
    
}

//--------------------------------------------------------------------------
// Function to store complete output tile block from BRAM to DRAM.
//--------------------------------------------------------------------------
template<const int OUT_FM_DEPTH>
void store_output_tile_slice (
    fm_t out_fm[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH], 
    fm_t out_fm_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
    wt_t bias_buf[OUT_FM_DEPTH],
    //bool kernel_pruned,
    int  ti,
    int  tj,
    int  f
)
{
    const int height_offset = ti * OUT_BUF_HEIGHT;
    const int width_offset  = tj * OUT_BUF_WIDTH;

    fm_t temp;

    OUTPUT_BUFFER_HEIGHT:
    for(int i = 0; i < OUT_BUF_HEIGHT; i++)
    {
        OUTPUT_BUFFER_WIDTH:
        for(int j = 0; j < OUT_BUF_WIDTH; j++)
        {
            //if(kernel_pruned)
            //    temp = (fm_t) bias_buf[f];
            //else
            //    temp = out_fm_buf[i][j] + (fm_t) bias_buf[f];
            
            temp = out_fm_buf[i][j] + (fm_t) bias_buf[f];

            // ReLU in-place
            if(temp < (fm_t) 0)
            {
                out_fm[f][height_offset + i][width_offset + j] = (fm_t) 0;
            }
            else
            {
                out_fm[f][height_offset + i][width_offset + j] = temp;
            }
        }
    }
}
