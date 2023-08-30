// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layer_top_mac_muladd_15ns_16s_29ns_29_4_1__HH__
#define __layer_top_mac_muladd_15ns_16s_29ns_29_4_1__HH__
#include "layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(layer_top_mac_muladd_15ns_16s_29ns_29_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3 layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U;

    SC_CTOR(layer_top_mac_muladd_15ns_16s_29ns_29_4_1):  layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U ("layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U") {
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.clk(clk);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.rst(reset);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.ce(ce);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.in0(din0);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.in1(din1);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.in2(din2);
        layer_top_mac_muladd_15ns_16s_29ns_29_4_1_DSP48_3_U.dout(dout);

    }

};

#endif //
