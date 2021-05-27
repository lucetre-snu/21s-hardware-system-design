-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu May 27 13:34:15 2021
-- Host        : lucetre running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/lucetre/Documents/semester/21s-hardware-system-design/lab10/proj/lab10-sj/lab10-sj.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/design_1_myip_0_0_sim_netlist.vhdl
-- Design      : design_1_myip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end design_1_myip_0_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of design_1_myip_0_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 20.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 20.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 20.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 180.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_clk_wiz_0 : entity is "clk_wiz_0";
end design_1_myip_0_0_clk_wiz_0;

architecture STRUCTURE of design_1_myip_0_0_clk_wiz_0 is
begin
inst: entity work.design_1_myip_0_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_myip_v1_0_S00_AXI is
  port (
    m00_bram_clk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    m00_bram_wrdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_rddata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_myip_v1_0_S00_AXI : entity is "myip_v1_0_S00_AXI";
end design_1_myip_0_0_myip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_myip_0_0_myip_v1_0_S00_AXI is
  signal \FSM_onehot_bram_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_bram_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_bram_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_bram_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \bram_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal bram_counter_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \bram_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bram_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal bram_rd_addr0 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \bram_rd_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__4_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__4_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__5_n_0\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__5_n_1\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__5_n_2\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__5_n_3\ : STD_LOGIC;
  signal \bram_rd_addr0_carry__6_n_3\ : STD_LOGIC;
  signal bram_rd_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal bram_rd_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal bram_rd_addr0_carry_n_0 : STD_LOGIC;
  signal bram_rd_addr0_carry_n_1 : STD_LOGIC;
  signal bram_rd_addr0_carry_n_2 : STD_LOGIC;
  signal bram_rd_addr0_carry_n_3 : STD_LOGIC;
  signal \m00_bram_wrdata[13]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[13]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[13]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[13]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[17]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[17]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[17]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[17]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[1]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[1]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[1]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[1]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[21]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[21]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[21]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[21]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[25]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[25]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[25]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[25]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[29]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[29]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[5]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[5]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[5]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[5]_INST_0_n_3\ : STD_LOGIC;
  signal \m00_bram_wrdata[9]_INST_0_n_0\ : STD_LOGIC;
  signal \m00_bram_wrdata[9]_INST_0_n_1\ : STD_LOGIC;
  signal \m00_bram_wrdata[9]_INST_0_n_2\ : STD_LOGIC;
  signal \m00_bram_wrdata[9]_INST_0_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal \NLW_bram_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_counter_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bram_rd_addr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bram_rd_addr0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_m00_bram_wrdata[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_m00_bram_wrdata[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_bram_state[1]_i_18\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_bram_state[1]_i_20\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_bram_state_reg[0]\ : label is "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_bram_state_reg[1]\ : label is "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_bram_state_reg[2]\ : label is "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_bram_state_reg[3]\ : label is "BRAM_WAIT:0100,BRAM_WRITE:1000,BRAM_READ:0010,BRAM_IDLE:0001";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m00_bram_addr[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_bram_addr[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_bram_addr[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_bram_addr[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_bram_addr[14]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_bram_addr[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_bram_addr[16]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_bram_addr[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_bram_addr[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_bram_addr[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_bram_addr[20]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_bram_addr[21]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_bram_addr[22]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_bram_addr[23]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_bram_addr[24]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_bram_addr[25]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_bram_addr[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_bram_addr[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_bram_addr[28]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_bram_addr[29]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_bram_addr[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_bram_addr[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_bram_addr[31]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_bram_addr[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_bram_addr[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_bram_addr[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_bram_addr[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_bram_addr[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_bram_addr[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_bram_addr[9]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_5\ : label is "soft_lutpair4";
begin
  Q(0) <= \^q\(0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\FSM_onehot_bram_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0FFD0D0D0D0D0"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_bram_state[1]_i_3_n_0\,
      I2 => \FSM_onehot_bram_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_bram_state[1]_i_4_n_0\,
      I4 => \FSM_onehot_bram_state[1]_i_5_n_0\,
      I5 => \^q\(0),
      O => \FSM_onehot_bram_state[0]_i_1_n_0\
    );
\FSM_onehot_bram_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF20FF20202020"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_bram_state[1]_i_3_n_0\,
      I2 => \FSM_onehot_bram_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_bram_state[1]_i_4_n_0\,
      I4 => \FSM_onehot_bram_state[1]_i_5_n_0\,
      I5 => \^q\(0),
      O => \FSM_onehot_bram_state[1]_i_1_n_0\
    );
\FSM_onehot_bram_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg0(1),
      I2 => slv_reg0(5),
      I3 => slv_reg0(4),
      O => \FSM_onehot_bram_state[1]_i_10_n_0\
    );
\FSM_onehot_bram_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg0(6),
      I2 => slv_reg0(15),
      I3 => slv_reg0(12),
      O => \FSM_onehot_bram_state[1]_i_11_n_0\
    );
\FSM_onehot_bram_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => slv_reg0(0),
      I2 => slv_reg0(8),
      I3 => slv_reg0(7),
      O => \FSM_onehot_bram_state[1]_i_12_n_0\
    );
\FSM_onehot_bram_state[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => slv_reg0(13),
      I2 => slv_reg0(10),
      I3 => slv_reg0(9),
      O => \FSM_onehot_bram_state[1]_i_13_n_0\
    );
\FSM_onehot_bram_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_counter_reg(25),
      I1 => bram_counter_reg(24),
      I2 => bram_counter_reg(27),
      I3 => bram_counter_reg(26),
      O => \FSM_onehot_bram_state[1]_i_14_n_0\
    );
\FSM_onehot_bram_state[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bram_counter_reg(23),
      I1 => bram_counter_reg(22),
      I2 => bram_counter_reg(21),
      I3 => bram_counter_reg(20),
      O => \FSM_onehot_bram_state[1]_i_15_n_0\
    );
\FSM_onehot_bram_state[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bram_counter_reg(19),
      I1 => bram_counter_reg(18),
      I2 => bram_counter_reg(17),
      I3 => bram_counter_reg(16),
      O => \FSM_onehot_bram_state[1]_i_16_n_0\
    );
\FSM_onehot_bram_state[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => bram_counter_reg(3),
      I1 => bram_counter_reg(1),
      I2 => bram_counter_reg(2),
      I3 => bram_counter_reg(0),
      O => \FSM_onehot_bram_state[1]_i_17_n_0\
    );
\FSM_onehot_bram_state[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bram_counter_reg(7),
      I1 => bram_counter_reg(6),
      I2 => bram_counter_reg(5),
      I3 => bram_counter_reg(4),
      O => \FSM_onehot_bram_state[1]_i_18_n_0\
    );
\FSM_onehot_bram_state[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bram_counter_reg(9),
      I1 => bram_counter_reg(8),
      I2 => bram_counter_reg(11),
      I3 => bram_counter_reg(10),
      O => \FSM_onehot_bram_state[1]_i_19_n_0\
    );
\FSM_onehot_bram_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_6_n_0\,
      I1 => \FSM_onehot_bram_state[1]_i_7_n_0\,
      I2 => \FSM_onehot_bram_state[1]_i_8_n_0\,
      I3 => \FSM_onehot_bram_state[1]_i_9_n_0\,
      O => \FSM_onehot_bram_state[1]_i_2_n_0\
    );
\FSM_onehot_bram_state[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bram_counter_reg(15),
      I1 => bram_counter_reg(14),
      I2 => bram_counter_reg(13),
      I3 => bram_counter_reg(12),
      O => \FSM_onehot_bram_state[1]_i_20_n_0\
    );
\FSM_onehot_bram_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_10_n_0\,
      I1 => \FSM_onehot_bram_state[1]_i_11_n_0\,
      I2 => \FSM_onehot_bram_state[1]_i_12_n_0\,
      I3 => \FSM_onehot_bram_state[1]_i_13_n_0\,
      O => \FSM_onehot_bram_state[1]_i_3_n_0\
    );
\FSM_onehot_bram_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_14_n_0\,
      I1 => bram_counter_reg(30),
      I2 => bram_counter_reg(28),
      I3 => bram_counter_reg(29),
      I4 => \FSM_onehot_bram_state[1]_i_15_n_0\,
      I5 => \FSM_onehot_bram_state[1]_i_16_n_0\,
      O => \FSM_onehot_bram_state[1]_i_4_n_0\
    );
\FSM_onehot_bram_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \FSM_onehot_bram_state[1]_i_17_n_0\,
      I1 => \FSM_onehot_bram_state[1]_i_18_n_0\,
      I2 => \FSM_onehot_bram_state[1]_i_19_n_0\,
      I3 => \FSM_onehot_bram_state[1]_i_20_n_0\,
      O => \FSM_onehot_bram_state[1]_i_5_n_0\
    );
\FSM_onehot_bram_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => slv_reg0(24),
      I2 => slv_reg0(27),
      I3 => slv_reg0(26),
      O => \FSM_onehot_bram_state[1]_i_6_n_0\
    );
\FSM_onehot_bram_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg0(31),
      I2 => slv_reg0(29),
      I3 => slv_reg0(28),
      O => \FSM_onehot_bram_state[1]_i_7_n_0\
    );
\FSM_onehot_bram_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg0(22),
      I2 => slv_reg0(21),
      I3 => slv_reg0(20),
      O => \FSM_onehot_bram_state[1]_i_8_n_0\
    );
\FSM_onehot_bram_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg0(18),
      I2 => slv_reg0(17),
      I3 => slv_reg0(16),
      O => \FSM_onehot_bram_state[1]_i_9_n_0\
    );
\FSM_onehot_bram_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\FSM_onehot_bram_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_bram_state[0]_i_1_n_0\,
      Q => \FSM_onehot_bram_state_reg_n_0_[0]\,
      S => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\FSM_onehot_bram_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_bram_state[1]_i_1_n_0\,
      Q => \FSM_onehot_bram_state_reg_n_0_[1]\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\FSM_onehot_bram_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_bram_state_reg_n_0_[1]\,
      Q => \FSM_onehot_bram_state_reg_n_0_[2]\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\FSM_onehot_bram_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_bram_state_reg_n_0_[2]\,
      Q => \^q\(0),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => \FSM_onehot_bram_state[3]_i_1_n_0\
    );
\bram_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \FSM_onehot_bram_state_reg_n_0_[0]\,
      I1 => s00_axi_aresetn,
      O => \bram_counter[0]_i_1_n_0\
    );
\bram_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bram_counter_reg(0),
      O => \bram_counter[0]_i_3_n_0\
    );
\bram_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[0]_i_2_n_7\,
      Q => bram_counter_reg(0),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_counter_reg[0]_i_2_n_0\,
      CO(2) => \bram_counter_reg[0]_i_2_n_1\,
      CO(1) => \bram_counter_reg[0]_i_2_n_2\,
      CO(0) => \bram_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \bram_counter_reg[0]_i_2_n_4\,
      O(2) => \bram_counter_reg[0]_i_2_n_5\,
      O(1) => \bram_counter_reg[0]_i_2_n_6\,
      O(0) => \bram_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => bram_counter_reg(3 downto 1),
      S(0) => \bram_counter[0]_i_3_n_0\
    );
\bram_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[8]_i_1_n_5\,
      Q => bram_counter_reg(10),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[8]_i_1_n_4\,
      Q => bram_counter_reg(11),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[12]_i_1_n_7\,
      Q => bram_counter_reg(12),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[8]_i_1_n_0\,
      CO(3) => \bram_counter_reg[12]_i_1_n_0\,
      CO(2) => \bram_counter_reg[12]_i_1_n_1\,
      CO(1) => \bram_counter_reg[12]_i_1_n_2\,
      CO(0) => \bram_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[12]_i_1_n_4\,
      O(2) => \bram_counter_reg[12]_i_1_n_5\,
      O(1) => \bram_counter_reg[12]_i_1_n_6\,
      O(0) => \bram_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(15 downto 12)
    );
\bram_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[12]_i_1_n_6\,
      Q => bram_counter_reg(13),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[12]_i_1_n_5\,
      Q => bram_counter_reg(14),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[12]_i_1_n_4\,
      Q => bram_counter_reg(15),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[16]_i_1_n_7\,
      Q => bram_counter_reg(16),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[12]_i_1_n_0\,
      CO(3) => \bram_counter_reg[16]_i_1_n_0\,
      CO(2) => \bram_counter_reg[16]_i_1_n_1\,
      CO(1) => \bram_counter_reg[16]_i_1_n_2\,
      CO(0) => \bram_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[16]_i_1_n_4\,
      O(2) => \bram_counter_reg[16]_i_1_n_5\,
      O(1) => \bram_counter_reg[16]_i_1_n_6\,
      O(0) => \bram_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(19 downto 16)
    );
\bram_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[16]_i_1_n_6\,
      Q => bram_counter_reg(17),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[16]_i_1_n_5\,
      Q => bram_counter_reg(18),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[16]_i_1_n_4\,
      Q => bram_counter_reg(19),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[0]_i_2_n_6\,
      Q => bram_counter_reg(1),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[20]_i_1_n_7\,
      Q => bram_counter_reg(20),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[16]_i_1_n_0\,
      CO(3) => \bram_counter_reg[20]_i_1_n_0\,
      CO(2) => \bram_counter_reg[20]_i_1_n_1\,
      CO(1) => \bram_counter_reg[20]_i_1_n_2\,
      CO(0) => \bram_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[20]_i_1_n_4\,
      O(2) => \bram_counter_reg[20]_i_1_n_5\,
      O(1) => \bram_counter_reg[20]_i_1_n_6\,
      O(0) => \bram_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(23 downto 20)
    );
\bram_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[20]_i_1_n_6\,
      Q => bram_counter_reg(21),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[20]_i_1_n_5\,
      Q => bram_counter_reg(22),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[20]_i_1_n_4\,
      Q => bram_counter_reg(23),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[24]_i_1_n_7\,
      Q => bram_counter_reg(24),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[20]_i_1_n_0\,
      CO(3) => \bram_counter_reg[24]_i_1_n_0\,
      CO(2) => \bram_counter_reg[24]_i_1_n_1\,
      CO(1) => \bram_counter_reg[24]_i_1_n_2\,
      CO(0) => \bram_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[24]_i_1_n_4\,
      O(2) => \bram_counter_reg[24]_i_1_n_5\,
      O(1) => \bram_counter_reg[24]_i_1_n_6\,
      O(0) => \bram_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(27 downto 24)
    );
\bram_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[24]_i_1_n_6\,
      Q => bram_counter_reg(25),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[24]_i_1_n_5\,
      Q => bram_counter_reg(26),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[24]_i_1_n_4\,
      Q => bram_counter_reg(27),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[28]_i_1_n_7\,
      Q => bram_counter_reg(28),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_bram_counter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_counter_reg[28]_i_1_n_2\,
      CO(0) => \bram_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_counter_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \bram_counter_reg[28]_i_1_n_5\,
      O(1) => \bram_counter_reg[28]_i_1_n_6\,
      O(0) => \bram_counter_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => bram_counter_reg(30 downto 28)
    );
\bram_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[28]_i_1_n_6\,
      Q => bram_counter_reg(29),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[0]_i_2_n_5\,
      Q => bram_counter_reg(2),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[28]_i_1_n_5\,
      Q => bram_counter_reg(30),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[0]_i_2_n_4\,
      Q => bram_counter_reg(3),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[4]_i_1_n_7\,
      Q => bram_counter_reg(4),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[0]_i_2_n_0\,
      CO(3) => \bram_counter_reg[4]_i_1_n_0\,
      CO(2) => \bram_counter_reg[4]_i_1_n_1\,
      CO(1) => \bram_counter_reg[4]_i_1_n_2\,
      CO(0) => \bram_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[4]_i_1_n_4\,
      O(2) => \bram_counter_reg[4]_i_1_n_5\,
      O(1) => \bram_counter_reg[4]_i_1_n_6\,
      O(0) => \bram_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(7 downto 4)
    );
\bram_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[4]_i_1_n_6\,
      Q => bram_counter_reg(5),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[4]_i_1_n_5\,
      Q => bram_counter_reg(6),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[4]_i_1_n_4\,
      Q => bram_counter_reg(7),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[8]_i_1_n_7\,
      Q => bram_counter_reg(8),
      R => \bram_counter[0]_i_1_n_0\
    );
\bram_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_counter_reg[4]_i_1_n_0\,
      CO(3) => \bram_counter_reg[8]_i_1_n_0\,
      CO(2) => \bram_counter_reg[8]_i_1_n_1\,
      CO(1) => \bram_counter_reg[8]_i_1_n_2\,
      CO(0) => \bram_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bram_counter_reg[8]_i_1_n_4\,
      O(2) => \bram_counter_reg[8]_i_1_n_5\,
      O(1) => \bram_counter_reg[8]_i_1_n_6\,
      O(0) => \bram_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => bram_counter_reg(11 downto 8)
    );
\bram_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^q\(0),
      D => \bram_counter_reg[8]_i_1_n_6\,
      Q => bram_counter_reg(9),
      R => \bram_counter[0]_i_1_n_0\
    );
bram_rd_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bram_rd_addr0_carry_n_0,
      CO(2) => bram_rd_addr0_carry_n_1,
      CO(1) => bram_rd_addr0_carry_n_2,
      CO(0) => bram_rd_addr0_carry_n_3,
      CYINIT => '0',
      DI(3) => bram_counter_reg(3),
      DI(2) => '0',
      DI(1) => bram_counter_reg(1),
      DI(0) => '0',
      O(3 downto 0) => bram_rd_addr0(3 downto 0),
      S(3) => bram_rd_addr0_carry_i_1_n_0,
      S(2) => bram_counter_reg(2),
      S(1) => bram_rd_addr0_carry_i_2_n_0,
      S(0) => bram_counter_reg(0)
    );
\bram_rd_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bram_rd_addr0_carry_n_0,
      CO(3) => \bram_rd_addr0_carry__0_n_0\,
      CO(2) => \bram_rd_addr0_carry__0_n_1\,
      CO(1) => \bram_rd_addr0_carry__0_n_2\,
      CO(0) => \bram_rd_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(7 downto 4),
      S(3 downto 0) => bram_counter_reg(7 downto 4)
    );
\bram_rd_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__0_n_0\,
      CO(3) => \bram_rd_addr0_carry__1_n_0\,
      CO(2) => \bram_rd_addr0_carry__1_n_1\,
      CO(1) => \bram_rd_addr0_carry__1_n_2\,
      CO(0) => \bram_rd_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(11 downto 8),
      S(3 downto 0) => bram_counter_reg(11 downto 8)
    );
\bram_rd_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__1_n_0\,
      CO(3) => \bram_rd_addr0_carry__2_n_0\,
      CO(2) => \bram_rd_addr0_carry__2_n_1\,
      CO(1) => \bram_rd_addr0_carry__2_n_2\,
      CO(0) => \bram_rd_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(15 downto 12),
      S(3 downto 0) => bram_counter_reg(15 downto 12)
    );
\bram_rd_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__2_n_0\,
      CO(3) => \bram_rd_addr0_carry__3_n_0\,
      CO(2) => \bram_rd_addr0_carry__3_n_1\,
      CO(1) => \bram_rd_addr0_carry__3_n_2\,
      CO(0) => \bram_rd_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(19 downto 16),
      S(3 downto 0) => bram_counter_reg(19 downto 16)
    );
\bram_rd_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__3_n_0\,
      CO(3) => \bram_rd_addr0_carry__4_n_0\,
      CO(2) => \bram_rd_addr0_carry__4_n_1\,
      CO(1) => \bram_rd_addr0_carry__4_n_2\,
      CO(0) => \bram_rd_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(23 downto 20),
      S(3 downto 0) => bram_counter_reg(23 downto 20)
    );
\bram_rd_addr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__4_n_0\,
      CO(3) => \bram_rd_addr0_carry__5_n_0\,
      CO(2) => \bram_rd_addr0_carry__5_n_1\,
      CO(1) => \bram_rd_addr0_carry__5_n_2\,
      CO(0) => \bram_rd_addr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => bram_rd_addr0(27 downto 24),
      S(3 downto 0) => bram_counter_reg(27 downto 24)
    );
\bram_rd_addr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_rd_addr0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_bram_rd_addr0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \bram_rd_addr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_bram_rd_addr0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => bram_rd_addr0(29 downto 28),
      S(3 downto 2) => B"00",
      S(1 downto 0) => bram_counter_reg(29 downto 28)
    );
bram_rd_addr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bram_counter_reg(3),
      O => bram_rd_addr0_carry_i_1_n_0
    );
bram_rd_addr0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bram_counter_reg(1),
      O => bram_rd_addr0_carry_i_2_n_0
    );
\m00_bram_addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(8),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(8),
      O => m00_bram_addr(8)
    );
\m00_bram_addr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(9),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(9),
      O => m00_bram_addr(9)
    );
\m00_bram_addr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(10),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(10),
      O => m00_bram_addr(10)
    );
\m00_bram_addr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(11),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(11),
      O => m00_bram_addr(11)
    );
\m00_bram_addr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(12),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(12),
      O => m00_bram_addr(12)
    );
\m00_bram_addr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(13),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(13),
      O => m00_bram_addr(13)
    );
\m00_bram_addr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(14),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(14),
      O => m00_bram_addr(14)
    );
\m00_bram_addr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(15),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(15),
      O => m00_bram_addr(15)
    );
\m00_bram_addr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(16),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(16),
      O => m00_bram_addr(16)
    );
\m00_bram_addr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(17),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(17),
      O => m00_bram_addr(17)
    );
\m00_bram_addr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(18),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(18),
      O => m00_bram_addr(18)
    );
\m00_bram_addr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(19),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(19),
      O => m00_bram_addr(19)
    );
\m00_bram_addr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(20),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(20),
      O => m00_bram_addr(20)
    );
\m00_bram_addr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(21),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(21),
      O => m00_bram_addr(21)
    );
\m00_bram_addr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(22),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(22),
      O => m00_bram_addr(22)
    );
\m00_bram_addr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(23),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(23),
      O => m00_bram_addr(23)
    );
\m00_bram_addr[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(24),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(24),
      O => m00_bram_addr(24)
    );
\m00_bram_addr[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(25),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(25),
      O => m00_bram_addr(25)
    );
\m00_bram_addr[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(26),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(26),
      O => m00_bram_addr(26)
    );
\m00_bram_addr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(27),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(27),
      O => m00_bram_addr(27)
    );
\m00_bram_addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(0),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(0),
      O => m00_bram_addr(0)
    );
\m00_bram_addr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(28),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(28),
      O => m00_bram_addr(28)
    );
\m00_bram_addr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(29),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(29),
      O => m00_bram_addr(29)
    );
\m00_bram_addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(1),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(1),
      O => m00_bram_addr(1)
    );
\m00_bram_addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(2),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(2),
      O => m00_bram_addr(2)
    );
\m00_bram_addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(3),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(3),
      O => m00_bram_addr(3)
    );
\m00_bram_addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(4),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(4),
      O => m00_bram_addr(4)
    );
\m00_bram_addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(5),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(5),
      O => m00_bram_addr(5)
    );
\m00_bram_addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(6),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(6),
      O => m00_bram_addr(6)
    );
\m00_bram_addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bram_counter_reg(7),
      I1 => \^q\(0),
      I2 => bram_rd_addr0(7),
      O => m00_bram_addr(7)
    );
\m00_bram_wrdata[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_bram_rddata(0),
      O => m00_bram_wrdata(0)
    );
\m00_bram_wrdata[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[9]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[13]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[13]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[13]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(16 downto 13),
      S(3 downto 0) => m00_bram_rddata(16 downto 13)
    );
\m00_bram_wrdata[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[13]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[17]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[17]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[17]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(20 downto 17),
      S(3 downto 0) => m00_bram_rddata(20 downto 17)
    );
\m00_bram_wrdata[1]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m00_bram_wrdata[1]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[1]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[1]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[1]_INST_0_n_3\,
      CYINIT => m00_bram_rddata(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(4 downto 1),
      S(3 downto 0) => m00_bram_rddata(4 downto 1)
    );
\m00_bram_wrdata[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[17]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[21]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[21]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[21]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(24 downto 21),
      S(3 downto 0) => m00_bram_rddata(24 downto 21)
    );
\m00_bram_wrdata[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[21]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[25]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[25]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[25]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(28 downto 25),
      S(3 downto 0) => m00_bram_rddata(28 downto 25)
    );
\m00_bram_wrdata[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_m00_bram_wrdata[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \m00_bram_wrdata[29]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_m00_bram_wrdata[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => m00_bram_wrdata(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => m00_bram_rddata(31 downto 29)
    );
\m00_bram_wrdata[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[1]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[5]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[5]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[5]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(8 downto 5),
      S(3 downto 0) => m00_bram_rddata(8 downto 5)
    );
\m00_bram_wrdata[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m00_bram_wrdata[5]_INST_0_n_0\,
      CO(3) => \m00_bram_wrdata[9]_INST_0_n_0\,
      CO(2) => \m00_bram_wrdata[9]_INST_0_n_1\,
      CO(1) => \m00_bram_wrdata[9]_INST_0_n_2\,
      CO(0) => \m00_bram_wrdata[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m00_bram_wrdata(12 downto 9),
      S(3 downto 0) => m00_bram_rddata(12 downto 9)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \slv_reg0[31]_i_3_n_0\,
      I1 => \slv_reg0[31]_i_4_n_0\,
      I2 => \FSM_onehot_bram_state[1]_i_4_n_0\,
      I3 => s00_axi_aresetn,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => bram_counter_reg(4),
      I1 => bram_counter_reg(5),
      I2 => bram_counter_reg(6),
      I3 => bram_counter_reg(7),
      I4 => \FSM_onehot_bram_state[1]_i_17_n_0\,
      O => \slv_reg0[31]_i_3_n_0\
    );
\slv_reg0[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => bram_counter_reg(12),
      I1 => bram_counter_reg(13),
      I2 => bram_counter_reg(14),
      I3 => bram_counter_reg(15),
      I4 => \FSM_onehot_bram_state[1]_i_19_n_0\,
      O => \slv_reg0[31]_i_4_n_0\
    );
\slv_reg0[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \slv_reg0[31]_i_1_n_0\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
u_clk_180: entity work.design_1_myip_0_0_clk_wiz_0
     port map (
      clk_in1 => s00_axi_aclk,
      clk_out1 => m00_bram_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0_myip_v1_0 is
  port (
    m00_bram_clk : out STD_LOGIC;
    BRAM_WE : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    m00_bram_wrdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_rddata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_myip_0_0_myip_v1_0 : entity is "myip_v1_0";
end design_1_myip_0_0_myip_v1_0;

architecture STRUCTURE of design_1_myip_0_0_myip_v1_0 is
begin
myip_v1_0_S00_AXI_inst: entity work.design_1_myip_0_0_myip_v1_0_S00_AXI
     port map (
      Q(0) => BRAM_WE(0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      m00_bram_addr(29 downto 0) => m00_bram_addr(29 downto 0),
      m00_bram_clk => m00_bram_clk,
      m00_bram_rddata(31 downto 0) => m00_bram_rddata(31 downto 0),
      m00_bram_wrdata(31 downto 0) => m00_bram_wrdata(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_myip_0_0 is
  port (
    m00_bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_clk : out STD_LOGIC;
    m00_bram_wrdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_rddata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_bram_en : out STD_LOGIC;
    m00_bram_rst : out STD_LOGIC;
    m00_bram_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_myip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_myip_0_0 : entity is "design_1_myip_0_0,myip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_myip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_myip_0_0 : entity is "myip_v1_0,Vivado 2018.3";
end design_1_myip_0_0;

architecture STRUCTURE of design_1_myip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_bram_addr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^m00_bram_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_bram_clk : signal is "xilinx.com:signal:clock:1.0 m00_bram_clk CLK, xilinx.com:interface:bram:1.0 m00_bram CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_bram_clk : signal is "XIL_INTERFACENAME m00_bram_clk, ASSOCIATED_RESET m00_bram_rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_bram_en : signal is "xilinx.com:interface:bram:1.0 m00_bram EN";
  attribute X_INTERFACE_INFO of m00_bram_rst : signal is "xilinx.com:signal:reset:1.0 m00_bram_rst RST, xilinx.com:interface:bram:1.0 m00_bram RST";
  attribute X_INTERFACE_PARAMETER of m00_bram_rst : signal is "XIL_INTERFACENAME m00_bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of m00_bram_addr : signal is "xilinx.com:interface:bram:1.0 m00_bram ADDR";
  attribute X_INTERFACE_INFO of m00_bram_rddata : signal is "xilinx.com:interface:bram:1.0 m00_bram DOUT";
  attribute X_INTERFACE_INFO of m00_bram_we : signal is "xilinx.com:interface:bram:1.0 m00_bram WE";
  attribute X_INTERFACE_PARAMETER of m00_bram_we : signal is "XIL_INTERFACENAME m00_bram, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of m00_bram_wrdata : signal is "xilinx.com:interface:bram:1.0 m00_bram DIN";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  m00_bram_addr(31 downto 2) <= \^m00_bram_addr\(31 downto 2);
  m00_bram_addr(1) <= \<const0>\;
  m00_bram_addr(0) <= \<const0>\;
  m00_bram_en <= \<const1>\;
  m00_bram_rst <= \<const0>\;
  m00_bram_we(3) <= \^m00_bram_we\(0);
  m00_bram_we(2) <= \^m00_bram_we\(0);
  m00_bram_we(1) <= \^m00_bram_we\(0);
  m00_bram_we(0) <= \^m00_bram_we\(0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_myip_0_0_myip_v1_0
     port map (
      BRAM_WE(0) => \^m00_bram_we\(0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      m00_bram_addr(29 downto 0) => \^m00_bram_addr\(31 downto 2),
      m00_bram_clk => m00_bram_clk,
      m00_bram_rddata(31 downto 0) => m00_bram_rddata(31 downto 0),
      m00_bram_wrdata(31 downto 0) => m00_bram_wrdata(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
