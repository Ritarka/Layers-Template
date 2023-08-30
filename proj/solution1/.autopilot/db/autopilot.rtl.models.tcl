set SynModuleInfo {
  {SRCNAME layer_top_Pipeline_BIAS_LOOP MODELNAME layer_top_Pipeline_BIAS_LOOP RTLNAME layer_top_layer_top_Pipeline_BIAS_LOOP
    SUBMODULES {
      {MODELNAME layer_top_flow_control_loop_pipe_sequential_init RTLNAME layer_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME layer_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH MODELNAME layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH RTLNAME layer_top_layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH}
  {SRCNAME conv.2 MODELNAME conv_2 RTLNAME layer_top_conv_2
    SUBMODULES {
      {MODELNAME layer_top_mul_16s_16s_29_1_1 RTLNAME layer_top_mul_16s_16s_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH MODELNAME layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH RTLNAME layer_top_layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH
    SUBMODULES {
      {MODELNAME layer_top_mux_160_8_16_1_1 RTLNAME layer_top_mux_160_8_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer2_Pipeline_BIAS_LOOP MODELNAME layer2_Pipeline_BIAS_LOOP RTLNAME layer_top_layer2_Pipeline_BIAS_LOOP}
  {SRCNAME layer2_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH MODELNAME layer2_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH RTLNAME layer_top_layer2_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH}
  {SRCNAME layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH MODELNAME layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH RTLNAME layer_top_layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH}
  {SRCNAME conv.1 MODELNAME conv_1 RTLNAME layer_top_conv_1
    SUBMODULES {
      {MODELNAME layer_top_mux_3_2_15_1_1 RTLNAME layer_top_mux_3_2_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_mul_15ns_16s_29_1_1 RTLNAME layer_top_mul_15ns_16s_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer2_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH MODELNAME layer2_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH RTLNAME layer_top_layer2_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH}
  {SRCNAME layer2 MODELNAME layer2 RTLNAME layer_top_layer2
    SUBMODULES {
      {MODELNAME layer_top_layer2_conv_in_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer2_conv_in_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_layer2_conv_wt_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer2_conv_wt_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_layer2_conv_bias_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer2_conv_bias_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_layer2_conv_out_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer2_conv_out_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer3_Pipeline_BIAS_LOOP MODELNAME layer3_Pipeline_BIAS_LOOP RTLNAME layer_top_layer3_Pipeline_BIAS_LOOP}
  {SRCNAME layer3_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH MODELNAME layer3_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH RTLNAME layer_top_layer3_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH}
  {SRCNAME conv MODELNAME conv RTLNAME layer_top_conv}
  {SRCNAME layer3_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH MODELNAME layer3_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH RTLNAME layer_top_layer3_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH}
  {SRCNAME layer3_Pipeline_VITIS_LOOP_137_1_VITIS_LOOP_139_2_VITIS_LOOP_141_3 MODELNAME layer3_Pipeline_VITIS_LOOP_137_1_VITIS_LOOP_139_2_VITIS_LOOP_141_3 RTLNAME layer_top_layer3_Pipeline_VITIS_LOOP_137_1_VITIS_LOOP_139_2_VITIS_LOOP_141_3
    SUBMODULES {
      {MODELNAME layer_top_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME layer_top_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_mul_10ns_16ns_25_1_1 RTLNAME layer_top_mul_10ns_16ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_mac_muladd_10ns_14ns_12ns_23_4_1 RTLNAME layer_top_mac_muladd_10ns_14ns_12ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer3 MODELNAME layer3 RTLNAME layer_top_layer3
    SUBMODULES {
      {MODELNAME layer_top_layer3_conv_in_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer3_conv_in_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_layer3_conv_bias_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer3_conv_bias_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer_top MODELNAME layer_top RTLNAME layer_top IS_TOP 1
    SUBMODULES {
      {MODELNAME layer_top_layer1_fm_buf_RAM_AUTO_1R1W RTLNAME layer_top_layer1_fm_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_conv_in_buf_RAM_AUTO_1R1W RTLNAME layer_top_conv_in_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_fm_m_axi RTLNAME layer_top_fm_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layer_top_wt_m_axi RTLNAME layer_top_wt_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layer_top_control_s_axi RTLNAME layer_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
