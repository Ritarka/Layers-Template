///////////////////////////////////////////////////////////////////////////////
// Filename:    resnet.h
// Author:      Akshay Karkal Kamath
///////////////////////////////////////////////////////////////////////////////
#pragma once

#include <iostream>
#include <ap_fixed.h>

//--------------------------------------------------------------------------
// Type conversions for simulation and synthesis
//--------------------------------------------------------------------------
#ifdef CSIM_DEBUG
    typedef float fm_t;
    typedef float wt_t;
#else
    typedef ap_fixed<16,3> fm_t;
    typedef ap_fixed<16,3> wt_t;
#endif

static const bool FM = false;
static const bool WT = true;

void layer_top (
    fm_t input_feature_map[512][92][160],

    wt_t layer_weights_1[128][512][1][1],
    wt_t layer_bias_1[128],

    wt_t layer_weights_2[128][128][3][3],
    wt_t layer_bias_2[128],

    wt_t layer_weights_3[512][128][1][1],
    wt_t layer_bias_3[512],

    fm_t output_feature_map[512][92][160]
);