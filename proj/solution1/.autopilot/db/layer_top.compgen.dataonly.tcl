# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
layer_weights_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
layer_bias_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
layer_weights_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
layer_bias_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
layer_weights_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
layer_bias_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
output_feature_map { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


