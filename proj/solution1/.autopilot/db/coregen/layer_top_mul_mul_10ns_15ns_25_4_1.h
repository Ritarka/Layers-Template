// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layer_top_mul_mul_10ns_15ns_25_4_1__HH__
#define __layer_top_mul_mul_10ns_15ns_25_4_1__HH__
#include "layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(layer_top_mul_mul_10ns_15ns_25_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5 layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U;

    SC_CTOR(layer_top_mul_mul_10ns_15ns_25_4_1):  layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U ("layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U") {
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.clk(clk);
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.rst(reset);
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.ce(ce);
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.a(din0);
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.b(din1);
        layer_top_mul_mul_10ns_15ns_25_4_1_DSP48_5_U.p(dout);

    }

};

#endif //
