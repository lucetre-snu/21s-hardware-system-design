// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 29 21:35:38 2021
// Host        : lucetre running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lucetre/Documents/semester/lab04/lab04.gen/sources_1/ip/xbip_multadd_MAC/xbip_multadd_MAC_stub.v
// Design      : xbip_multadd_MAC
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_15,Vivado 2020.2" *)
module xbip_multadd_MAC(A, B, C, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],C[63:0],SUBTRACT,P[63:0],PCOUT[47:0]" */;
  input [31:0]A;
  input [31:0]B;
  input [63:0]C;
  input SUBTRACT;
  output [63:0]P;
  output [47:0]PCOUT;
endmodule
