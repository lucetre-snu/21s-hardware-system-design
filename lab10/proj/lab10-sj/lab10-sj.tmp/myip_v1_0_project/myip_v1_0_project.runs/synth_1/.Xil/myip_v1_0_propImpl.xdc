set_property SRC_FILE_INFO {cfile:c:/Users/lucetre/Documents/semester/21s-hardware-system-design/lab10/src/lab10_ip_repo/myip_1.0/src/clk_wiz_0_4/clk_wiz_0.xdc rfile:../../../../../../../src/lab10_ip_repo/myip_1.0/src/clk_wiz_0_4/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:myip_v1_0_S00_AXI_inst/u_clk_180/inst} [current_design]
current_instance myip_v1_0_S00_AXI_inst/u_clk_180/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
