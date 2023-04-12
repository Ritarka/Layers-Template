set SynModuleInfo {
  {SRCNAME layer_top_Pipeline_BIAS_LOOP MODELNAME layer_top_Pipeline_BIAS_LOOP RTLNAME layer_top_layer_top_Pipeline_BIAS_LOOP
    SUBMODULES {
      {MODELNAME layer_top_flow_control_loop_pipe_sequential_init RTLNAME layer_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME layer_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH MODELNAME layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH RTLNAME layer_top_layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH}
  {SRCNAME conv_1x1 MODELNAME conv_1x1 RTLNAME layer_top_conv_1x1
    SUBMODULES {
      {MODELNAME layer_top_mul_mul_16s_16s_29_4_1 RTLNAME layer_top_mul_mul_16s_16s_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_mac_muladd_16s_16s_29ns_29_4_1 RTLNAME layer_top_mac_muladd_16s_16s_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH MODELNAME layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH RTLNAME layer_top_layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH
    SUBMODULES {
      {MODELNAME layer_top_urem_14ns_9ns_14_18_1 RTLNAME layer_top_urem_14ns_9ns_14_18_1 BINDTYPE op TYPE urem IMPL auto LATENCY 17 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_mux_1608_16_1_1 RTLNAME layer_top_mux_1608_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME layer_top MODELNAME layer_top RTLNAME layer_top IS_TOP 1
    SUBMODULES {
      {MODELNAME layer_top_conv_in_buf_V_RAM_AUTO_1R1W RTLNAME layer_top_conv_in_buf_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_conv_bias_buf_V_RAM_AUTO_1R1W RTLNAME layer_top_conv_bias_buf_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_conv_out_buf_V_RAM_AUTO_1R1W RTLNAME layer_top_conv_out_buf_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME layer_top_fm_m_axi RTLNAME layer_top_fm_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layer_top_wt_m_axi RTLNAME layer_top_wt_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME layer_top_control_s_axi RTLNAME layer_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
