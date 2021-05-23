set_property SRC_FILE_INFO {cfile:a:/21s-hardware-system-design/lab10/proj/lab10/lab10.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0.xdc rfile:../../../lab10.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst/myip_v1_0_S00_AXI_inst/u_clk_180/inst} [current_design]
current_instance inst/myip_v1_0_S00_AXI_inst/u_clk_180/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
