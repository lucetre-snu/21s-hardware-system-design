// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 27 14:35:22 2021
// Host        : lucetre running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_myip_0_0_sim_netlist.v
// Design      : design_1_myip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(20.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(180.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_myip_0_0,myip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (m00_bram_addr,
    m00_bram_clk,
    m00_bram_wrdata,
    m00_bram_rddata,
    m00_bram_en,
    m00_bram_rst,
    m00_bram_we,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 m00_bram ADDR" *) output [31:0]m00_bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_bram_clk CLK, xilinx.com:interface:bram:1.0 m00_bram CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_bram_clk, ASSOCIATED_RESET m00_bram_rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) output m00_bram_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 m00_bram DIN" *) output [31:0]m00_bram_wrdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 m00_bram DOUT" *) input [31:0]m00_bram_rddata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 m00_bram EN" *) output m00_bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_bram_rst RST, xilinx.com:interface:bram:1.0 m00_bram RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output m00_bram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 m00_bram WE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_bram, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output [3:0]m00_bram_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:2]\^m00_bram_addr ;
  wire m00_bram_clk;
  wire [31:0]m00_bram_rddata;
  wire [0:0]\^m00_bram_we ;
  wire [31:0]m00_bram_wrdata;
  (* IBUF_LOW_PWR *) wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign m00_bram_addr[31:2] = \^m00_bram_addr [31:2];
  assign m00_bram_addr[1] = \<const0> ;
  assign m00_bram_addr[0] = \<const0> ;
  assign m00_bram_en = \<const1> ;
  assign m00_bram_rst = \<const0> ;
  assign m00_bram_we[3] = \^m00_bram_we [0];
  assign m00_bram_we[2] = \^m00_bram_we [0];
  assign m00_bram_we[1] = \^m00_bram_we [0];
  assign m00_bram_we[0] = \^m00_bram_we [0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_v1_0 inst
       (.BRAM_WE(\^m00_bram_we ),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .m00_bram_addr(\^m00_bram_addr ),
        .m00_bram_clk(m00_bram_clk),
        .m00_bram_rddata(m00_bram_rddata),
        .m00_bram_wrdata(m00_bram_wrdata),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_v1_0
   (m00_bram_clk,
    BRAM_WE,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    m00_bram_wrdata,
    S_AXI_ARREADY,
    s00_axi_rdata,
    m00_bram_addr,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    m00_bram_rddata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output m00_bram_clk;
  output [0:0]BRAM_WE;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]m00_bram_wrdata;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [29:0]m00_bram_addr;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [31:0]m00_bram_rddata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [0:0]BRAM_WE;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [29:0]m00_bram_addr;
  wire m00_bram_clk;
  wire [31:0]m00_bram_rddata;
  wire [31:0]m00_bram_wrdata;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_v1_0_S00_AXI myip_v1_0_S00_AXI_inst
       (.Q(BRAM_WE),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .m00_bram_addr(m00_bram_addr),
        .m00_bram_clk(m00_bram_clk),
        .m00_bram_rddata(m00_bram_rddata),
        .m00_bram_wrdata(m00_bram_wrdata),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_v1_0_S00_AXI
   (m00_bram_clk,
    Q,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    m00_bram_wrdata,
    S_AXI_ARREADY,
    s00_axi_rdata,
    m00_bram_addr,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    m00_bram_rddata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output m00_bram_clk;
  output [0:0]Q;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]m00_bram_wrdata;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output [29:0]m00_bram_addr;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [31:0]m00_bram_rddata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire \FSM_onehot_bram_state[0]_i_1_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_10_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_11_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_12_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_13_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_14_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_15_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_16_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_17_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_18_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_19_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_1_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_20_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_2_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_3_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_4_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_5_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_6_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_7_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_8_n_0 ;
  wire \FSM_onehot_bram_state[1]_i_9_n_0 ;
  wire \FSM_onehot_bram_state[3]_i_1_n_0 ;
  wire \FSM_onehot_bram_state_reg_n_0_[0] ;
  wire \FSM_onehot_bram_state_reg_n_0_[1] ;
  wire \FSM_onehot_bram_state_reg_n_0_[2] ;
  wire [0:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \bram_counter[0]_i_1_n_0 ;
  wire \bram_counter[0]_i_3_n_0 ;
  wire [30:0]bram_counter_reg;
  wire \bram_counter_reg[0]_i_2_n_0 ;
  wire \bram_counter_reg[0]_i_2_n_1 ;
  wire \bram_counter_reg[0]_i_2_n_2 ;
  wire \bram_counter_reg[0]_i_2_n_3 ;
  wire \bram_counter_reg[0]_i_2_n_4 ;
  wire \bram_counter_reg[0]_i_2_n_5 ;
  wire \bram_counter_reg[0]_i_2_n_6 ;
  wire \bram_counter_reg[0]_i_2_n_7 ;
  wire \bram_counter_reg[12]_i_1_n_0 ;
  wire \bram_counter_reg[12]_i_1_n_1 ;
  wire \bram_counter_reg[12]_i_1_n_2 ;
  wire \bram_counter_reg[12]_i_1_n_3 ;
  wire \bram_counter_reg[12]_i_1_n_4 ;
  wire \bram_counter_reg[12]_i_1_n_5 ;
  wire \bram_counter_reg[12]_i_1_n_6 ;
  wire \bram_counter_reg[12]_i_1_n_7 ;
  wire \bram_counter_reg[16]_i_1_n_0 ;
  wire \bram_counter_reg[16]_i_1_n_1 ;
  wire \bram_counter_reg[16]_i_1_n_2 ;
  wire \bram_counter_reg[16]_i_1_n_3 ;
  wire \bram_counter_reg[16]_i_1_n_4 ;
  wire \bram_counter_reg[16]_i_1_n_5 ;
  wire \bram_counter_reg[16]_i_1_n_6 ;
  wire \bram_counter_reg[16]_i_1_n_7 ;
  wire \bram_counter_reg[20]_i_1_n_0 ;
  wire \bram_counter_reg[20]_i_1_n_1 ;
  wire \bram_counter_reg[20]_i_1_n_2 ;
  wire \bram_counter_reg[20]_i_1_n_3 ;
  wire \bram_counter_reg[20]_i_1_n_4 ;
  wire \bram_counter_reg[20]_i_1_n_5 ;
  wire \bram_counter_reg[20]_i_1_n_6 ;
  wire \bram_counter_reg[20]_i_1_n_7 ;
  wire \bram_counter_reg[24]_i_1_n_0 ;
  wire \bram_counter_reg[24]_i_1_n_1 ;
  wire \bram_counter_reg[24]_i_1_n_2 ;
  wire \bram_counter_reg[24]_i_1_n_3 ;
  wire \bram_counter_reg[24]_i_1_n_4 ;
  wire \bram_counter_reg[24]_i_1_n_5 ;
  wire \bram_counter_reg[24]_i_1_n_6 ;
  wire \bram_counter_reg[24]_i_1_n_7 ;
  wire \bram_counter_reg[28]_i_1_n_2 ;
  wire \bram_counter_reg[28]_i_1_n_3 ;
  wire \bram_counter_reg[28]_i_1_n_5 ;
  wire \bram_counter_reg[28]_i_1_n_6 ;
  wire \bram_counter_reg[28]_i_1_n_7 ;
  wire \bram_counter_reg[4]_i_1_n_0 ;
  wire \bram_counter_reg[4]_i_1_n_1 ;
  wire \bram_counter_reg[4]_i_1_n_2 ;
  wire \bram_counter_reg[4]_i_1_n_3 ;
  wire \bram_counter_reg[4]_i_1_n_4 ;
  wire \bram_counter_reg[4]_i_1_n_5 ;
  wire \bram_counter_reg[4]_i_1_n_6 ;
  wire \bram_counter_reg[4]_i_1_n_7 ;
  wire \bram_counter_reg[8]_i_1_n_0 ;
  wire \bram_counter_reg[8]_i_1_n_1 ;
  wire \bram_counter_reg[8]_i_1_n_2 ;
  wire \bram_counter_reg[8]_i_1_n_3 ;
  wire \bram_counter_reg[8]_i_1_n_4 ;
  wire \bram_counter_reg[8]_i_1_n_5 ;
  wire \bram_counter_reg[8]_i_1_n_6 ;
  wire \bram_counter_reg[8]_i_1_n_7 ;
  wire [29:0]bram_wr_addr0;
  wire bram_wr_addr0_carry__0_n_0;
  wire bram_wr_addr0_carry__0_n_1;
  wire bram_wr_addr0_carry__0_n_2;
  wire bram_wr_addr0_carry__0_n_3;
  wire bram_wr_addr0_carry__1_n_0;
  wire bram_wr_addr0_carry__1_n_1;
  wire bram_wr_addr0_carry__1_n_2;
  wire bram_wr_addr0_carry__1_n_3;
  wire bram_wr_addr0_carry__2_n_0;
  wire bram_wr_addr0_carry__2_n_1;
  wire bram_wr_addr0_carry__2_n_2;
  wire bram_wr_addr0_carry__2_n_3;
  wire bram_wr_addr0_carry__3_n_0;
  wire bram_wr_addr0_carry__3_n_1;
  wire bram_wr_addr0_carry__3_n_2;
  wire bram_wr_addr0_carry__3_n_3;
  wire bram_wr_addr0_carry__4_n_0;
  wire bram_wr_addr0_carry__4_n_1;
  wire bram_wr_addr0_carry__4_n_2;
  wire bram_wr_addr0_carry__4_n_3;
  wire bram_wr_addr0_carry__5_n_0;
  wire bram_wr_addr0_carry__5_n_1;
  wire bram_wr_addr0_carry__5_n_2;
  wire bram_wr_addr0_carry__5_n_3;
  wire bram_wr_addr0_carry__6_n_3;
  wire bram_wr_addr0_carry_i_1_n_0;
  wire bram_wr_addr0_carry_i_2_n_0;
  wire bram_wr_addr0_carry_n_0;
  wire bram_wr_addr0_carry_n_1;
  wire bram_wr_addr0_carry_n_2;
  wire bram_wr_addr0_carry_n_3;
  wire [29:0]m00_bram_addr;
  wire m00_bram_clk;
  wire [31:0]m00_bram_rddata;
  wire [31:0]m00_bram_wrdata;
  wire \m00_bram_wrdata[13]_INST_0_n_0 ;
  wire \m00_bram_wrdata[13]_INST_0_n_1 ;
  wire \m00_bram_wrdata[13]_INST_0_n_2 ;
  wire \m00_bram_wrdata[13]_INST_0_n_3 ;
  wire \m00_bram_wrdata[17]_INST_0_n_0 ;
  wire \m00_bram_wrdata[17]_INST_0_n_1 ;
  wire \m00_bram_wrdata[17]_INST_0_n_2 ;
  wire \m00_bram_wrdata[17]_INST_0_n_3 ;
  wire \m00_bram_wrdata[1]_INST_0_n_0 ;
  wire \m00_bram_wrdata[1]_INST_0_n_1 ;
  wire \m00_bram_wrdata[1]_INST_0_n_2 ;
  wire \m00_bram_wrdata[1]_INST_0_n_3 ;
  wire \m00_bram_wrdata[21]_INST_0_n_0 ;
  wire \m00_bram_wrdata[21]_INST_0_n_1 ;
  wire \m00_bram_wrdata[21]_INST_0_n_2 ;
  wire \m00_bram_wrdata[21]_INST_0_n_3 ;
  wire \m00_bram_wrdata[25]_INST_0_n_0 ;
  wire \m00_bram_wrdata[25]_INST_0_n_1 ;
  wire \m00_bram_wrdata[25]_INST_0_n_2 ;
  wire \m00_bram_wrdata[25]_INST_0_n_3 ;
  wire \m00_bram_wrdata[29]_INST_0_n_2 ;
  wire \m00_bram_wrdata[29]_INST_0_n_3 ;
  wire \m00_bram_wrdata[5]_INST_0_n_0 ;
  wire \m00_bram_wrdata[5]_INST_0_n_1 ;
  wire \m00_bram_wrdata[5]_INST_0_n_2 ;
  wire \m00_bram_wrdata[5]_INST_0_n_3 ;
  wire \m00_bram_wrdata[9]_INST_0_n_0 ;
  wire \m00_bram_wrdata[9]_INST_0_n_1 ;
  wire \m00_bram_wrdata[9]_INST_0_n_2 ;
  wire \m00_bram_wrdata[9]_INST_0_n_3 ;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire \slv_reg0[31]_i_4_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [3:2]\NLW_bram_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_counter_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_bram_wr_addr0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_bram_wr_addr0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_m00_bram_wrdata[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_m00_bram_wrdata[29]_INST_0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hD0D0FFD0D0D0D0D0)) 
    \FSM_onehot_bram_state[0]_i_1 
       (.I0(\FSM_onehot_bram_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_bram_state[1]_i_3_n_0 ),
        .I2(\FSM_onehot_bram_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_bram_state[1]_i_4_n_0 ),
        .I4(\FSM_onehot_bram_state[1]_i_5_n_0 ),
        .I5(Q),
        .O(\FSM_onehot_bram_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF20FF20202020)) 
    \FSM_onehot_bram_state[1]_i_1 
       (.I0(\FSM_onehot_bram_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_bram_state[1]_i_3_n_0 ),
        .I2(\FSM_onehot_bram_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_bram_state[1]_i_4_n_0 ),
        .I4(\FSM_onehot_bram_state[1]_i_5_n_0 ),
        .I5(Q),
        .O(\FSM_onehot_bram_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_bram_state[1]_i_10 
       (.I0(slv_reg0[2]),
        .I1(slv_reg0[1]),
        .I2(slv_reg0[5]),
        .I3(slv_reg0[4]),
        .O(\FSM_onehot_bram_state[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_bram_state[1]_i_11 
       (.I0(slv_reg0[11]),
        .I1(slv_reg0[6]),
        .I2(slv_reg0[15]),
        .I3(slv_reg0[12]),
        .O(\FSM_onehot_bram_state[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_bram_state[1]_i_12 
       (.I0(slv_reg0[3]),
        .I1(slv_reg0[0]),
        .I2(slv_reg0[8]),
        .I3(slv_reg0[7]),
        .O(\FSM_onehot_bram_state[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_13 
       (.I0(slv_reg0[14]),
        .I1(slv_reg0[13]),
        .I2(slv_reg0[10]),
        .I3(slv_reg0[9]),
        .O(\FSM_onehot_bram_state[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_bram_state[1]_i_14 
       (.I0(bram_counter_reg[25]),
        .I1(bram_counter_reg[24]),
        .I2(bram_counter_reg[27]),
        .I3(bram_counter_reg[26]),
        .O(\FSM_onehot_bram_state[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_15 
       (.I0(bram_counter_reg[23]),
        .I1(bram_counter_reg[22]),
        .I2(bram_counter_reg[21]),
        .I3(bram_counter_reg[20]),
        .O(\FSM_onehot_bram_state[1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_16 
       (.I0(bram_counter_reg[19]),
        .I1(bram_counter_reg[18]),
        .I2(bram_counter_reg[17]),
        .I3(bram_counter_reg[16]),
        .O(\FSM_onehot_bram_state[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_onehot_bram_state[1]_i_17 
       (.I0(bram_counter_reg[3]),
        .I1(bram_counter_reg[1]),
        .I2(bram_counter_reg[2]),
        .I3(bram_counter_reg[0]),
        .O(\FSM_onehot_bram_state[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_18 
       (.I0(bram_counter_reg[7]),
        .I1(bram_counter_reg[6]),
        .I2(bram_counter_reg[5]),
        .I3(bram_counter_reg[4]),
        .O(\FSM_onehot_bram_state[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_bram_state[1]_i_19 
       (.I0(bram_counter_reg[9]),
        .I1(bram_counter_reg[8]),
        .I2(bram_counter_reg[11]),
        .I3(bram_counter_reg[10]),
        .O(\FSM_onehot_bram_state[1]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_bram_state[1]_i_2 
       (.I0(\FSM_onehot_bram_state[1]_i_6_n_0 ),
        .I1(\FSM_onehot_bram_state[1]_i_7_n_0 ),
        .I2(\FSM_onehot_bram_state[1]_i_8_n_0 ),
        .I3(\FSM_onehot_bram_state[1]_i_9_n_0 ),
        .O(\FSM_onehot_bram_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_20 
       (.I0(bram_counter_reg[15]),
        .I1(bram_counter_reg[14]),
        .I2(bram_counter_reg[13]),
        .I3(bram_counter_reg[12]),
        .O(\FSM_onehot_bram_state[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \FSM_onehot_bram_state[1]_i_3 
       (.I0(\FSM_onehot_bram_state[1]_i_10_n_0 ),
        .I1(\FSM_onehot_bram_state[1]_i_11_n_0 ),
        .I2(\FSM_onehot_bram_state[1]_i_12_n_0 ),
        .I3(\FSM_onehot_bram_state[1]_i_13_n_0 ),
        .O(\FSM_onehot_bram_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_bram_state[1]_i_4 
       (.I0(\FSM_onehot_bram_state[1]_i_14_n_0 ),
        .I1(bram_counter_reg[30]),
        .I2(bram_counter_reg[28]),
        .I3(bram_counter_reg[29]),
        .I4(\FSM_onehot_bram_state[1]_i_15_n_0 ),
        .I5(\FSM_onehot_bram_state[1]_i_16_n_0 ),
        .O(\FSM_onehot_bram_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \FSM_onehot_bram_state[1]_i_5 
       (.I0(\FSM_onehot_bram_state[1]_i_17_n_0 ),
        .I1(\FSM_onehot_bram_state[1]_i_18_n_0 ),
        .I2(\FSM_onehot_bram_state[1]_i_19_n_0 ),
        .I3(\FSM_onehot_bram_state[1]_i_20_n_0 ),
        .O(\FSM_onehot_bram_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_bram_state[1]_i_6 
       (.I0(slv_reg0[25]),
        .I1(slv_reg0[24]),
        .I2(slv_reg0[27]),
        .I3(slv_reg0[26]),
        .O(\FSM_onehot_bram_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_7 
       (.I0(slv_reg0[30]),
        .I1(slv_reg0[31]),
        .I2(slv_reg0[29]),
        .I3(slv_reg0[28]),
        .O(\FSM_onehot_bram_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_8 
       (.I0(slv_reg0[23]),
        .I1(slv_reg0[22]),
        .I2(slv_reg0[21]),
        .I3(slv_reg0[20]),
        .O(\FSM_onehot_bram_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_bram_state[1]_i_9 
       (.I0(slv_reg0[19]),
        .I1(slv_reg0[18]),
        .I2(slv_reg0[17]),
        .I3(slv_reg0[16]),
        .O(\FSM_onehot_bram_state[1]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_bram_state[3]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_bram_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_bram_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_bram_state_reg_n_0_[0] ),
        .S(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_bram_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_bram_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_bram_state_reg_n_0_[1] ),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_bram_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_bram_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_bram_state_reg_n_0_[2] ),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_bram_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_bram_state_reg_n_0_[2] ),
        .Q(Q),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(\FSM_onehot_bram_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bram_counter[0]_i_1 
       (.I0(\FSM_onehot_bram_state_reg_n_0_[0] ),
        .I1(s00_axi_aresetn),
        .O(\bram_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_counter[0]_i_3 
       (.I0(bram_counter_reg[0]),
        .O(\bram_counter[0]_i_3_n_0 ));
  FDRE \bram_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[0]_i_2_n_7 ),
        .Q(bram_counter_reg[0]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\bram_counter_reg[0]_i_2_n_0 ,\bram_counter_reg[0]_i_2_n_1 ,\bram_counter_reg[0]_i_2_n_2 ,\bram_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_counter_reg[0]_i_2_n_4 ,\bram_counter_reg[0]_i_2_n_5 ,\bram_counter_reg[0]_i_2_n_6 ,\bram_counter_reg[0]_i_2_n_7 }),
        .S({bram_counter_reg[3:1],\bram_counter[0]_i_3_n_0 }));
  FDRE \bram_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[8]_i_1_n_5 ),
        .Q(bram_counter_reg[10]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[8]_i_1_n_4 ),
        .Q(bram_counter_reg[11]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[12]_i_1_n_7 ),
        .Q(bram_counter_reg[12]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[12]_i_1 
       (.CI(\bram_counter_reg[8]_i_1_n_0 ),
        .CO({\bram_counter_reg[12]_i_1_n_0 ,\bram_counter_reg[12]_i_1_n_1 ,\bram_counter_reg[12]_i_1_n_2 ,\bram_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[12]_i_1_n_4 ,\bram_counter_reg[12]_i_1_n_5 ,\bram_counter_reg[12]_i_1_n_6 ,\bram_counter_reg[12]_i_1_n_7 }),
        .S(bram_counter_reg[15:12]));
  FDRE \bram_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[12]_i_1_n_6 ),
        .Q(bram_counter_reg[13]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[12]_i_1_n_5 ),
        .Q(bram_counter_reg[14]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[12]_i_1_n_4 ),
        .Q(bram_counter_reg[15]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[16]_i_1_n_7 ),
        .Q(bram_counter_reg[16]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[16]_i_1 
       (.CI(\bram_counter_reg[12]_i_1_n_0 ),
        .CO({\bram_counter_reg[16]_i_1_n_0 ,\bram_counter_reg[16]_i_1_n_1 ,\bram_counter_reg[16]_i_1_n_2 ,\bram_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[16]_i_1_n_4 ,\bram_counter_reg[16]_i_1_n_5 ,\bram_counter_reg[16]_i_1_n_6 ,\bram_counter_reg[16]_i_1_n_7 }),
        .S(bram_counter_reg[19:16]));
  FDRE \bram_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[16]_i_1_n_6 ),
        .Q(bram_counter_reg[17]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[16]_i_1_n_5 ),
        .Q(bram_counter_reg[18]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[16]_i_1_n_4 ),
        .Q(bram_counter_reg[19]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[0]_i_2_n_6 ),
        .Q(bram_counter_reg[1]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[20]_i_1_n_7 ),
        .Q(bram_counter_reg[20]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[20]_i_1 
       (.CI(\bram_counter_reg[16]_i_1_n_0 ),
        .CO({\bram_counter_reg[20]_i_1_n_0 ,\bram_counter_reg[20]_i_1_n_1 ,\bram_counter_reg[20]_i_1_n_2 ,\bram_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[20]_i_1_n_4 ,\bram_counter_reg[20]_i_1_n_5 ,\bram_counter_reg[20]_i_1_n_6 ,\bram_counter_reg[20]_i_1_n_7 }),
        .S(bram_counter_reg[23:20]));
  FDRE \bram_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[20]_i_1_n_6 ),
        .Q(bram_counter_reg[21]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[20]_i_1_n_5 ),
        .Q(bram_counter_reg[22]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[20]_i_1_n_4 ),
        .Q(bram_counter_reg[23]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[24]_i_1_n_7 ),
        .Q(bram_counter_reg[24]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[24]_i_1 
       (.CI(\bram_counter_reg[20]_i_1_n_0 ),
        .CO({\bram_counter_reg[24]_i_1_n_0 ,\bram_counter_reg[24]_i_1_n_1 ,\bram_counter_reg[24]_i_1_n_2 ,\bram_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[24]_i_1_n_4 ,\bram_counter_reg[24]_i_1_n_5 ,\bram_counter_reg[24]_i_1_n_6 ,\bram_counter_reg[24]_i_1_n_7 }),
        .S(bram_counter_reg[27:24]));
  FDRE \bram_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[24]_i_1_n_6 ),
        .Q(bram_counter_reg[25]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[24]_i_1_n_5 ),
        .Q(bram_counter_reg[26]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[24]_i_1_n_4 ),
        .Q(bram_counter_reg[27]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[28]_i_1_n_7 ),
        .Q(bram_counter_reg[28]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[28]_i_1 
       (.CI(\bram_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_bram_counter_reg[28]_i_1_CO_UNCONNECTED [3:2],\bram_counter_reg[28]_i_1_n_2 ,\bram_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_counter_reg[28]_i_1_O_UNCONNECTED [3],\bram_counter_reg[28]_i_1_n_5 ,\bram_counter_reg[28]_i_1_n_6 ,\bram_counter_reg[28]_i_1_n_7 }),
        .S({1'b0,bram_counter_reg[30:28]}));
  FDRE \bram_counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[28]_i_1_n_6 ),
        .Q(bram_counter_reg[29]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[0]_i_2_n_5 ),
        .Q(bram_counter_reg[2]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[28]_i_1_n_5 ),
        .Q(bram_counter_reg[30]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[0]_i_2_n_4 ),
        .Q(bram_counter_reg[3]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[4]_i_1_n_7 ),
        .Q(bram_counter_reg[4]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[4]_i_1 
       (.CI(\bram_counter_reg[0]_i_2_n_0 ),
        .CO({\bram_counter_reg[4]_i_1_n_0 ,\bram_counter_reg[4]_i_1_n_1 ,\bram_counter_reg[4]_i_1_n_2 ,\bram_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[4]_i_1_n_4 ,\bram_counter_reg[4]_i_1_n_5 ,\bram_counter_reg[4]_i_1_n_6 ,\bram_counter_reg[4]_i_1_n_7 }),
        .S(bram_counter_reg[7:4]));
  FDRE \bram_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[4]_i_1_n_6 ),
        .Q(bram_counter_reg[5]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[4]_i_1_n_5 ),
        .Q(bram_counter_reg[6]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[4]_i_1_n_4 ),
        .Q(bram_counter_reg[7]),
        .R(\bram_counter[0]_i_1_n_0 ));
  FDRE \bram_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[8]_i_1_n_7 ),
        .Q(bram_counter_reg[8]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 \bram_counter_reg[8]_i_1 
       (.CI(\bram_counter_reg[4]_i_1_n_0 ),
        .CO({\bram_counter_reg[8]_i_1_n_0 ,\bram_counter_reg[8]_i_1_n_1 ,\bram_counter_reg[8]_i_1_n_2 ,\bram_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_counter_reg[8]_i_1_n_4 ,\bram_counter_reg[8]_i_1_n_5 ,\bram_counter_reg[8]_i_1_n_6 ,\bram_counter_reg[8]_i_1_n_7 }),
        .S(bram_counter_reg[11:8]));
  FDRE \bram_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Q),
        .D(\bram_counter_reg[8]_i_1_n_6 ),
        .Q(bram_counter_reg[9]),
        .R(\bram_counter[0]_i_1_n_0 ));
  CARRY4 bram_wr_addr0_carry
       (.CI(1'b0),
        .CO({bram_wr_addr0_carry_n_0,bram_wr_addr0_carry_n_1,bram_wr_addr0_carry_n_2,bram_wr_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({bram_counter_reg[3],1'b0,bram_counter_reg[1],1'b0}),
        .O(bram_wr_addr0[3:0]),
        .S({bram_wr_addr0_carry_i_1_n_0,bram_counter_reg[2],bram_wr_addr0_carry_i_2_n_0,bram_counter_reg[0]}));
  CARRY4 bram_wr_addr0_carry__0
       (.CI(bram_wr_addr0_carry_n_0),
        .CO({bram_wr_addr0_carry__0_n_0,bram_wr_addr0_carry__0_n_1,bram_wr_addr0_carry__0_n_2,bram_wr_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[7:4]),
        .S(bram_counter_reg[7:4]));
  CARRY4 bram_wr_addr0_carry__1
       (.CI(bram_wr_addr0_carry__0_n_0),
        .CO({bram_wr_addr0_carry__1_n_0,bram_wr_addr0_carry__1_n_1,bram_wr_addr0_carry__1_n_2,bram_wr_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[11:8]),
        .S(bram_counter_reg[11:8]));
  CARRY4 bram_wr_addr0_carry__2
       (.CI(bram_wr_addr0_carry__1_n_0),
        .CO({bram_wr_addr0_carry__2_n_0,bram_wr_addr0_carry__2_n_1,bram_wr_addr0_carry__2_n_2,bram_wr_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[15:12]),
        .S(bram_counter_reg[15:12]));
  CARRY4 bram_wr_addr0_carry__3
       (.CI(bram_wr_addr0_carry__2_n_0),
        .CO({bram_wr_addr0_carry__3_n_0,bram_wr_addr0_carry__3_n_1,bram_wr_addr0_carry__3_n_2,bram_wr_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[19:16]),
        .S(bram_counter_reg[19:16]));
  CARRY4 bram_wr_addr0_carry__4
       (.CI(bram_wr_addr0_carry__3_n_0),
        .CO({bram_wr_addr0_carry__4_n_0,bram_wr_addr0_carry__4_n_1,bram_wr_addr0_carry__4_n_2,bram_wr_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[23:20]),
        .S(bram_counter_reg[23:20]));
  CARRY4 bram_wr_addr0_carry__5
       (.CI(bram_wr_addr0_carry__4_n_0),
        .CO({bram_wr_addr0_carry__5_n_0,bram_wr_addr0_carry__5_n_1,bram_wr_addr0_carry__5_n_2,bram_wr_addr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_wr_addr0[27:24]),
        .S(bram_counter_reg[27:24]));
  CARRY4 bram_wr_addr0_carry__6
       (.CI(bram_wr_addr0_carry__5_n_0),
        .CO({NLW_bram_wr_addr0_carry__6_CO_UNCONNECTED[3:1],bram_wr_addr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bram_wr_addr0_carry__6_O_UNCONNECTED[3:2],bram_wr_addr0[29:28]}),
        .S({1'b0,1'b0,bram_counter_reg[29:28]}));
  LUT1 #(
    .INIT(2'h1)) 
    bram_wr_addr0_carry_i_1
       (.I0(bram_counter_reg[3]),
        .O(bram_wr_addr0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bram_wr_addr0_carry_i_2
       (.I0(bram_counter_reg[1]),
        .O(bram_wr_addr0_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[10]_INST_0 
       (.I0(bram_wr_addr0[8]),
        .I1(Q),
        .I2(bram_counter_reg[8]),
        .O(m00_bram_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[11]_INST_0 
       (.I0(bram_wr_addr0[9]),
        .I1(Q),
        .I2(bram_counter_reg[9]),
        .O(m00_bram_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[12]_INST_0 
       (.I0(bram_wr_addr0[10]),
        .I1(Q),
        .I2(bram_counter_reg[10]),
        .O(m00_bram_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[13]_INST_0 
       (.I0(bram_wr_addr0[11]),
        .I1(Q),
        .I2(bram_counter_reg[11]),
        .O(m00_bram_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[14]_INST_0 
       (.I0(bram_wr_addr0[12]),
        .I1(Q),
        .I2(bram_counter_reg[12]),
        .O(m00_bram_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[15]_INST_0 
       (.I0(bram_wr_addr0[13]),
        .I1(Q),
        .I2(bram_counter_reg[13]),
        .O(m00_bram_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[16]_INST_0 
       (.I0(bram_wr_addr0[14]),
        .I1(Q),
        .I2(bram_counter_reg[14]),
        .O(m00_bram_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[17]_INST_0 
       (.I0(bram_wr_addr0[15]),
        .I1(Q),
        .I2(bram_counter_reg[15]),
        .O(m00_bram_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[18]_INST_0 
       (.I0(bram_wr_addr0[16]),
        .I1(Q),
        .I2(bram_counter_reg[16]),
        .O(m00_bram_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[19]_INST_0 
       (.I0(bram_wr_addr0[17]),
        .I1(Q),
        .I2(bram_counter_reg[17]),
        .O(m00_bram_addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[20]_INST_0 
       (.I0(bram_wr_addr0[18]),
        .I1(Q),
        .I2(bram_counter_reg[18]),
        .O(m00_bram_addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[21]_INST_0 
       (.I0(bram_wr_addr0[19]),
        .I1(Q),
        .I2(bram_counter_reg[19]),
        .O(m00_bram_addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[22]_INST_0 
       (.I0(bram_wr_addr0[20]),
        .I1(Q),
        .I2(bram_counter_reg[20]),
        .O(m00_bram_addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[23]_INST_0 
       (.I0(bram_wr_addr0[21]),
        .I1(Q),
        .I2(bram_counter_reg[21]),
        .O(m00_bram_addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[24]_INST_0 
       (.I0(bram_wr_addr0[22]),
        .I1(Q),
        .I2(bram_counter_reg[22]),
        .O(m00_bram_addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[25]_INST_0 
       (.I0(bram_wr_addr0[23]),
        .I1(Q),
        .I2(bram_counter_reg[23]),
        .O(m00_bram_addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[26]_INST_0 
       (.I0(bram_wr_addr0[24]),
        .I1(Q),
        .I2(bram_counter_reg[24]),
        .O(m00_bram_addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[27]_INST_0 
       (.I0(bram_wr_addr0[25]),
        .I1(Q),
        .I2(bram_counter_reg[25]),
        .O(m00_bram_addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[28]_INST_0 
       (.I0(bram_wr_addr0[26]),
        .I1(Q),
        .I2(bram_counter_reg[26]),
        .O(m00_bram_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[29]_INST_0 
       (.I0(bram_wr_addr0[27]),
        .I1(Q),
        .I2(bram_counter_reg[27]),
        .O(m00_bram_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[2]_INST_0 
       (.I0(bram_wr_addr0[0]),
        .I1(Q),
        .I2(bram_counter_reg[0]),
        .O(m00_bram_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[30]_INST_0 
       (.I0(bram_wr_addr0[28]),
        .I1(Q),
        .I2(bram_counter_reg[28]),
        .O(m00_bram_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[31]_INST_0 
       (.I0(bram_wr_addr0[29]),
        .I1(Q),
        .I2(bram_counter_reg[29]),
        .O(m00_bram_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[3]_INST_0 
       (.I0(bram_wr_addr0[1]),
        .I1(Q),
        .I2(bram_counter_reg[1]),
        .O(m00_bram_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[4]_INST_0 
       (.I0(bram_wr_addr0[2]),
        .I1(Q),
        .I2(bram_counter_reg[2]),
        .O(m00_bram_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[5]_INST_0 
       (.I0(bram_wr_addr0[3]),
        .I1(Q),
        .I2(bram_counter_reg[3]),
        .O(m00_bram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[6]_INST_0 
       (.I0(bram_wr_addr0[4]),
        .I1(Q),
        .I2(bram_counter_reg[4]),
        .O(m00_bram_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[7]_INST_0 
       (.I0(bram_wr_addr0[5]),
        .I1(Q),
        .I2(bram_counter_reg[5]),
        .O(m00_bram_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[8]_INST_0 
       (.I0(bram_wr_addr0[6]),
        .I1(Q),
        .I2(bram_counter_reg[6]),
        .O(m00_bram_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_bram_addr[9]_INST_0 
       (.I0(bram_wr_addr0[7]),
        .I1(Q),
        .I2(bram_counter_reg[7]),
        .O(m00_bram_addr[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \m00_bram_wrdata[0]_INST_0 
       (.I0(m00_bram_rddata[0]),
        .O(m00_bram_wrdata[0]));
  CARRY4 \m00_bram_wrdata[13]_INST_0 
       (.CI(\m00_bram_wrdata[9]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[13]_INST_0_n_0 ,\m00_bram_wrdata[13]_INST_0_n_1 ,\m00_bram_wrdata[13]_INST_0_n_2 ,\m00_bram_wrdata[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[16:13]),
        .S(m00_bram_rddata[16:13]));
  CARRY4 \m00_bram_wrdata[17]_INST_0 
       (.CI(\m00_bram_wrdata[13]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[17]_INST_0_n_0 ,\m00_bram_wrdata[17]_INST_0_n_1 ,\m00_bram_wrdata[17]_INST_0_n_2 ,\m00_bram_wrdata[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[20:17]),
        .S(m00_bram_rddata[20:17]));
  CARRY4 \m00_bram_wrdata[1]_INST_0 
       (.CI(1'b0),
        .CO({\m00_bram_wrdata[1]_INST_0_n_0 ,\m00_bram_wrdata[1]_INST_0_n_1 ,\m00_bram_wrdata[1]_INST_0_n_2 ,\m00_bram_wrdata[1]_INST_0_n_3 }),
        .CYINIT(m00_bram_rddata[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[4:1]),
        .S(m00_bram_rddata[4:1]));
  CARRY4 \m00_bram_wrdata[21]_INST_0 
       (.CI(\m00_bram_wrdata[17]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[21]_INST_0_n_0 ,\m00_bram_wrdata[21]_INST_0_n_1 ,\m00_bram_wrdata[21]_INST_0_n_2 ,\m00_bram_wrdata[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[24:21]),
        .S(m00_bram_rddata[24:21]));
  CARRY4 \m00_bram_wrdata[25]_INST_0 
       (.CI(\m00_bram_wrdata[21]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[25]_INST_0_n_0 ,\m00_bram_wrdata[25]_INST_0_n_1 ,\m00_bram_wrdata[25]_INST_0_n_2 ,\m00_bram_wrdata[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[28:25]),
        .S(m00_bram_rddata[28:25]));
  CARRY4 \m00_bram_wrdata[29]_INST_0 
       (.CI(\m00_bram_wrdata[25]_INST_0_n_0 ),
        .CO({\NLW_m00_bram_wrdata[29]_INST_0_CO_UNCONNECTED [3:2],\m00_bram_wrdata[29]_INST_0_n_2 ,\m00_bram_wrdata[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_m00_bram_wrdata[29]_INST_0_O_UNCONNECTED [3],m00_bram_wrdata[31:29]}),
        .S({1'b0,m00_bram_rddata[31:29]}));
  CARRY4 \m00_bram_wrdata[5]_INST_0 
       (.CI(\m00_bram_wrdata[1]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[5]_INST_0_n_0 ,\m00_bram_wrdata[5]_INST_0_n_1 ,\m00_bram_wrdata[5]_INST_0_n_2 ,\m00_bram_wrdata[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[8:5]),
        .S(m00_bram_rddata[8:5]));
  CARRY4 \m00_bram_wrdata[9]_INST_0 
       (.CI(\m00_bram_wrdata[5]_INST_0_n_0 ),
        .CO({\m00_bram_wrdata[9]_INST_0_n_0 ,\m00_bram_wrdata[9]_INST_0_n_1 ,\m00_bram_wrdata[9]_INST_0_n_2 ,\m00_bram_wrdata[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(m00_bram_wrdata[12:9]),
        .S(m00_bram_rddata[12:9]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg0[31]_i_3_n_0 ),
        .I1(\slv_reg0[31]_i_4_n_0 ),
        .I2(\FSM_onehot_bram_state[1]_i_4_n_0 ),
        .I3(s00_axi_aresetn),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_2 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \slv_reg0[31]_i_3 
       (.I0(bram_counter_reg[4]),
        .I1(bram_counter_reg[5]),
        .I2(bram_counter_reg[6]),
        .I3(bram_counter_reg[7]),
        .I4(\FSM_onehot_bram_state[1]_i_17_n_0 ),
        .O(\slv_reg0[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \slv_reg0[31]_i_4 
       (.I0(bram_counter_reg[12]),
        .I1(bram_counter_reg[13]),
        .I2(bram_counter_reg[14]),
        .I3(bram_counter_reg[15]),
        .I4(\FSM_onehot_bram_state[1]_i_19_n_0 ),
        .O(\slv_reg0[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_5 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 u_clk_180
       (.clk_in1(s00_axi_aclk),
        .clk_out1(m00_bram_clk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
