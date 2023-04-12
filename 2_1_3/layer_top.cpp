///////////////////////////////////////////////////////////////////////////////
// Filename:    conv_7x7_top.cpp
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////

#include "resnet.h"
#include "conv.h"
#include "utils.h"

void layer_top (
    fm_t input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
    wt_t layer_weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    //bool skip_idx[OUT_FM_DEPTH][IN_FM_DEPTH],
    wt_t layer_bias[OUT_FM_DEPTH],
    fm_t output_feature_map[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH]
)
{
    //--------------------------------------------------------------------------
    // Defines interface IO ports for HLS. 
    //--------------------------------------------------------------------------
    #pragma HLS INTERFACE m_axi depth=1  port=input_feature_map   bundle=fm
    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights       bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=layer_bias          bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=output_feature_map  bundle=fm
    
    #pragma HLS INTERFACE s_axilite register	port=return

    //--------------------------------------------------------------------------
    // On-chip buffers
    // You should NOT modify the buffer dimensions!
    //--------------------------------------------------------------------------
    fm_t conv_in_buf[IN_BUF_HEIGHT][IN_BUF_WIDTH];
//#pragma HLS array_partition variable=conv_in_buf    dim=1  complete
#pragma HLS array_partition variable=conv_in_buf   dim=2  complete
    
    wt_t conv_wt_buf[KERNEL_HEIGHT][KERNEL_WIDTH];
//#pragma HLS array_partition variable=conv_wt_buf    dim=1  complete
    
    wt_t conv_bias_buf[OUT_FM_DEPTH];
//#pragma HLS array_partition variable=conv_bias_buf    dim=1  complete

    fm_t conv_out_buf[OUT_BUF_HEIGHT][OUT_BUF_WIDTH] = {0};
//#pragma HLS array_partition variable=conv_out_buf   dim=1  complete
#pragma HLS array_partition variable=conv_out_buf   dim=2  complete

    //bool kernel_pruned = true;
    //bool first_valid_channel = true;
    //int  init_channel_idx = 0;

    load_bias(conv_bias_buf, 
              layer_bias);

    //--------------------------------------------------------------------------
    // Process each tile iteratively
    //--------------------------------------------------------------------------
    TILE_ROW:
    for(int ti = 0; ti < N_TILE_ROWS; ti++)
    {
        TILE_COL:
        for(int tj = 0; tj < N_TILE_COLS; tj++)
        {
            std::cout << "Processing Tile " << ti*N_TILE_COLS + tj + 1;
            std::cout << "/" << N_TILE_ROWS * N_TILE_COLS << std::endl;    

            KERNEL_LOOP:
            for(int f = 0; f < OUT_FM_DEPTH; f++)
            {
                CHANNEL_LOOP:
                for(int c = 0; c < IN_FM_DEPTH; c++)
                {
                    //if(!skip_idx[f][c])
                    if(true)
                    {
                        //kernel_pruned = false;
                        //
                        //if(first_valid_channel)
                        //{
                        //    init_channel_idx = c;
                        //    first_valid_channel = false;
                        //}

                        load_input_tile_slice (conv_in_buf,
                                               input_feature_map,
                                               ti,
                                               tj,
                                               c);
                        
                        load_weight_slice (conv_wt_buf,
                                           layer_weights,
                                           f,
                                           c);

                        conv_3x3 (conv_out_buf,
                                  conv_in_buf,
                                  conv_wt_buf,
                                  //init_channel_idx,
                                  c);
                    }

                }
                store_output_tile_slice(output_feature_map,
                                        conv_out_buf,
                                        conv_bias_buf,
                                        //kernel_pruned,
                                        ti, 
                                        tj,
                                        f);

               //kernel_pruned = true;
               //first_valid_channel = true;
            }
        }
    }
}
