-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Mar 29 21:35:38 2021
-- Host        : lucetre running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lucetre/Documents/semester/lab04/lab04.gen/sources_1/ip/xbip_multadd_MAC/xbip_multadd_MAC_stub.vhdl
-- Design      : xbip_multadd_MAC
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xbip_multadd_MAC is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end xbip_multadd_MAC;

architecture stub of xbip_multadd_MAC is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],C[63:0],SUBTRACT,P[63:0],PCOUT[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_multadd_v3_0_15,Vivado 2020.2";
begin
end;
