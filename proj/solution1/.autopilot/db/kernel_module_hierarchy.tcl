set ModuleHierarchy {[{
"Name" : "layer_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_layer_top_Pipeline_BIAS_LOOP_fu_1539","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BIAS_LOOP","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_layer2_fu_1547","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_layer2_Pipeline_BIAS_LOOP_fu_1455","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "BIAS_LOOP","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "KERNEL_LOOP","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_layer2_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH_fu_1969","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH","ID" : "8","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "CHANNEL_LOOP","ID" : "9","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_layer2_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH_fu_1463","ID" : "10","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH","ID" : "11","Type" : "pipeline"},]},
			{"Name" : "grp_layer2_Pipeline_WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH_fu_1633","ID" : "12","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "WEIGHT_KERNEL_HEIGHT_WEIGHT_KERNEL_WIDTH","ID" : "13","Type" : "pipeline"},]},
			{"Name" : "grp_conv_1_fu_1641","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "KH_KW_OH","ID" : "15","Type" : "pipeline"},]},]},]},]},
	{"Name" : "grp_layer3_fu_2222","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_layer3_Pipeline_BIAS_LOOP_fu_1486","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "BIAS_LOOP","ID" : "18","Type" : "pipeline"},]},
		{"Name" : "grp_layer3_Pipeline_VITIS_LOOP_137_1_VITIS_LOOP_139_2_VITIS_LOOP_141_3_fu_2157","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_137_1_VITIS_LOOP_139_2_VITIS_LOOP_141_3","ID" : "20","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "KERNEL_LOOP","ID" : "21","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_layer3_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH_fu_1988","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH","ID" : "23","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "CHANNEL_LOOP","ID" : "24","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_layer3_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH_fu_1494","ID" : "25","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH","ID" : "26","Type" : "pipeline"},]},
			{"Name" : "grp_conv_fu_1662","ID" : "27","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "OH","ID" : "28","Type" : "pipeline"},]},]},]},]},],
"SubLoops" : [
	{"Name" : "KERNEL_LOOP","ID" : "29","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_layer_top_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH_fu_2052","ID" : "30","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH","ID" : "31","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "CHANNEL_LOOP","ID" : "32","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_layer_top_Pipeline_INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH_fu_1559","ID" : "33","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "INPUT_BUFFER_HEIGHT_INPUT_BUFFER_WIDTH","ID" : "34","Type" : "pipeline"},]},
		{"Name" : "grp_conv_2_fu_1726","ID" : "35","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "OH","ID" : "36","Type" : "pipeline"},]},]},]},]
}]}