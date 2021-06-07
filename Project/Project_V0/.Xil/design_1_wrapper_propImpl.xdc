set_property SRC_FILE_INFO {cfile:c:/Users/lucetre/Documents/semester/21s-hardware-system-design/Project/Project_V0/Project_V0.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0.xdc rfile:../Project_V0.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:design_1_i/myip_0/inst/myip_v1_0_S00_AXI_inst/u_clk_180/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/lucetre/Documents/semester/21s-hardware-system-design/Project/Project_V0/Project_V0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc rfile:../Project_V0.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc id:2 order:EARLY scoped_inst:design_1_i/processing_system7_0/inst} [current_design]
current_instance design_1_i/myip_0/inst/myip_v1_0_S00_AXI_inst/u_clk_180/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
current_instance
current_instance design_1_i/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.6
