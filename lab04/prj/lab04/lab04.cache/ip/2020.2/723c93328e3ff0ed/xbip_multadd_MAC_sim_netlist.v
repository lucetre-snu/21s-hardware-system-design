// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 29 19:23:43 2021
// Host        : lucetre running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xbip_multadd_MAC_sim_netlist.v
// Design      : xbip_multadd_MAC
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_MAC,xbip_multadd_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_15,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [63:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]C;
  wire [63:0]P;
  wire SUBTRACT;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "0" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "63" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_15 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
UX6PGj3SsvCyCs6e4WTW/JyW6bO0ab9htopBE1fpgzTJaJckW1Q7oPDnbjgu//RZcJa11E+3OMah
l1NA8Q1Omw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rTNLM41zRn2jlQ7+LnYfCHUhUy2hjnJkVIwrVepRRi4ivTmVgYw6JZPqwMwWiHFpud1djXcpBCOl
7Iu8ATp95e92ukyl//KHCHvSAsQjWuYtwlO9e4UWLK927gG2lyV7ifM4GOZ63yIIdpEqOugLzbKE
TuK2vaI3HEaIvXPaFCI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NBZjFovwJ6Ud4AurKWrTfGaTSetfP60XoKCw6c1otuyw7Bt+uy/Wb0uNhWyV+Uc/FjdyZxHYPrq6
wvv59PFvdZQctZ6H16nvIBY7p6cF+vvvFPaVElH19FvZ9VhrZLLt1p78FJVXMPBt/n9U8/TwsvOh
as42T2GBFzwMWkIF/kmL4N+KnxDYiy/VD+fsk31IuRy4ilDRrITpfmKHw1iZPs456Q5t/JDNW59P
cvTJNapo3YC8XIY2dpq6lSsNTLlL0nkbyufC+kTIDhhhu5MszatagsUYBFW1lvIzGxRZQyf+pujk
D/nFXMNtxXzgmAxgrmb6he2M+RIK7WOGJIConA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FACL7SADPYaVcXp3i2t3xUzgHH+p99cDppaqGEP/aoAmWVER6VAzsdGol2xqIrPgnRKVT6AUgciG
bAPPalrwX1bJeXv5pB+8NJyk0vmOpePdZg8puhNKSguexS4UmrNARBjOkoyPNd22WzazwhV3eUN8
IeDsnvCPEjxgdIxR6V/yIluavd3TmB/JlcEqxj5rbn8KJeSEIEuVJuj1g3O5evgTaYIUh9nVsu1c
UCsNhbJxLJxaIvhDJcmYTu/liJ27BUGAd5vTLve+sgv+N4DisxFBdly1JQha92/JsmDVIhhYWlRN
aJF22OFr6Lrec2f2GxpLH0CyTuTmELTjnVD7eA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YVRBPFUFI1nTGao2WdWdHYr94pFLkHltHipy/MwLeW0wURzG16qFlys6O/D8eQ+2KRpDxWqUVmNZ
TliqNJ0logq5y8O+sYWUnNVGK4AO6nMVjgQGneyAIk9RTw18Qow+jLSG6UpcXIQ9gS2uuFecxyc7
77ryH4/SZyMQfkL/JY4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pbR4iEroecb/C4aS3sn2HvpeKitXtP9LkAc1a4kbianUqI6UBYgStnqXOJNGzI980S70aIBSdQBG
wein0qVBSe78rz+ESN889uk0DzRjV49jDvZ2zZY5QPnkRxc3mDuAXa0Qc2RatOHyOwHydZLCklll
XqdRG+5HklDgosgTRryGyReNDiW4Q6g89IAocFDapWgEn4vYiuQF+no9+Y2MGuwlI/p1uITPGyF9
jKWeQUsz7562Oph3YgxmWJZEUTh2MuLeIPsk1rQS9xlw8FloFxLKR/0ZzqkB7NeNFTMXEkZ9a3/Y
/CqtYZmex3OePoiK8WrQ/Bq7xhQ8Qmy0TztDUQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f+jEpcDQBsSK8Q/3lvmrwbGoumBmz5PwW61HVL0Izp+3fFJwcv0eIWmyUP+ix5TxxmB7LtnpXMoe
TAxcrOK6ozpJrqvM6hZl3Tvp3T1GrTgn/iSCD10N9dPKVrC7fUk0DTBDhUeyqTbWlXzIy8ABhs+H
CUK/UiA1D0qI3b4eDepd1YkzbMwkMPpzrSPlCBoxCKCMbzbCwVDE4r4KPSK7FkczWRGbQGIFMN5O
snv+oELS2ZUq7Zu6sHfBshTC8R5wu4v+OpE+qZVYjwC7YjftfzqDtfFYY/oMEq4Vi686d+3GGFl+
gZyhR/mxNviMdhUr5LPtpffXBm4SF/pAmppLgg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fjUcRM3U2iE8xCUymVhRo20elwNzAeA5+pzpqvDcgTODIcWo6PPJMkf2NAY3O8D48MShQ+9vWurz
LBwkZ2OPwobE5AlVOWprg8MMOdTnI0a0cpkAnOS8M2K3aj/XfwhUS8kO1ZZoonTP9xove7krs6v4
QnIPw1681myg14qLdpHYU5eSfsXGrqqWjRWpCK0qxOgbJlkXI39XHJoKAlrrAgJ4Es3ez2x1/nAz
0hN47Dsjx+TPUd1xPpjZLH2qsuqoVw+cJDBPPxR1QrsPy/vxELU8VlWthX/2Gxvt0eKmZStFPtxF
pSWgxInJVoTyk48sNy3UoLFzJX1GIPLEEmJzHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WaCnqI58LQKNeNnpRG19de53PVUJkaVUs6+PXM6O6SoAYNniwtDNsnL9fE2sGwVme2r1xzdSTQQM
6k+4eaLeXhIOYq169zjhAhp54WtgtKgIfRYoKj6Mneekx16BHzWK9rhiHpNiJQsOJpiXvyEjg6Qg
PeUSbw20kL4R1X8LYRjleN+wRtNgcTE1wk1iSrFUbqhd7ctvOn4UDR0vk0pA8AQrjqwNmsrylTiE
8oElUf8lwqFZkQ3QteH1K4F7P9CTQRp/pAS5gbpYFUrRqpRCKdqSnfxcNAsLRIXHyFKtXiunRDoz
zyKeKoO84O10/534J0I9BvdvlfjDRHzf0WRc1Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3744)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
D+9lfS59pj/VVil0GGdJ59k3DOq46v/+7whNz7wCwfYdRiJPbLItui6o/zSBZEKI9gWLjOldtur1
/rmcVBQ3GA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Al4EzSQFZknJP1zXhKNIjHP2ED06e/ds+6xnXGYdohXSo6+myvUa29WxrDQ2BRCFMopuWgRIHVKr
QIL1R/lyNoyVEM+ZIozLEHgX6l1O/zTuyjCCsopsjgqJb2Wtgn8s+TaOCOvqtDrvLzt0PvLiCx3j
UkBnJ2bYuzUoN4JusSo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GryPO/G6YUeEdMxSH6E+Cylnk/9RJIpF3DfZ8qm1ecWq6hYmaGlwqiFs0cnQCPLUX5i7YB1Zhyg7
xWXnsmJ4+UqH7C7kALbZ0VgPMoxq9qXXyR3XFKCabcHGfdH1PGZgCMUJcT1U4IAGCC0HKbpQue4v
BxJxLOKucvmUl0mdNC5jktjqlol5N3LNQ1Nqb0Bi2JUbKhDXyPAghHnYm1RA1WIG/I7KPAHJRMsn
rq61TkO0r9B2jyIUh8Re69O30QuaI8MVXArXwxoLarP1bw33bj+4nw7AKPOj3d27JIY1FecXOlD+
JrglMTs1oca4ii7DTHZWrWcZD11O8wPZrSB/hg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gIxs1xJo2g0tw3pn4+ixShAOAMuK8enzcVscdNEALwVHu56ynHRf8QNrBE9hWTm0Zrotj69ZA/BK
kwI2N0AWvjk9ACiHZ+Q82pH5keVYRtMQtsAzmOmN3YJ3UkTFHW6AIALOLN/+b1CJx2DSSbUvSJRL
vYdCMY94F9Lklx9UjVtQ7r4y14DJeU9UdmLHZEJTMZ3ahOPNz53F7Y+D2abS+pN3OTP/hfwC8SXW
Y0mKDR8Tkg+zCHqpFqHVe4sN/fDWpQUR8MUszd4ygr4o7HqUOQ1RTUGx1Mc0Wtrq0QAi8Syc7V28
2OviXFf4KLhcKYs0bZN+gsgApGWiwyRvQRkZsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lbc8rPGs9vNVJLV1Ztd+OweNWVf1r3bbhZXmEPzls7ewmRVAwHDdCz0iBVD5zHofb2Pv1cNIx1DF
Cegpi/O809UypK5vc2xsVTWDeqgYhsqvVrROg6FOkBiX78rZZIEYF4NC0rxHw/5ixAFYsGHPS840
rFWEsubE6/eEK5KjxNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dGaX53L9Ek9wU1QC7h+mJBxY9VRQrtTA5cLqpyZvyLoi582YqMcyFxxsOh08z/CW++CYcslxK5c2
nB76qWzDGxhrcZ2LL96TaJdxfIU2EOvAbd+35O26BL5Dr65GaDwdjrxZgGVYX9zZnupIqxn8XhmC
YxZ5OIIBnPbpGQ6ribzMzlGvFizUnWWAzae4ZJK4JY+UWbuv2xdBtaDjg/1YQkACqpob/Aq4IcN9
/z+aEP0pGhrF9aYTALhCIBKRSiEmlWYFi+Y/QtDMcgPf3kf28Jl2zN9nxRNVeqUYEwqb9cl2u01M
MuW6fdTQYP8au8BQaSrUEy47B0go0sgbZVDbwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LEujW+ttFeLDTd6Kj02ulQ4/6kxvxmgT0K9WSqzr2nEKo8u+D1wTZSNxo1Fc+SuL6Np9NoHmXZ6a
quET05vVSiMB+lIOHpijfSVwTqZ7LgYHnhXrPB5My87wRq0b9Jyg7VUy3e0yzOlKBYa8cqDKm5vE
rKtHLezwwsG/dfHwGL5KISY7D5xkA348D53WjZT2GPECqu3z2+qFTyr2skARLi+fP7tdqXthwiZ/
w32KaI0lhDwxw9CdQ/7jGNqq5B4pDSAIRhs657DCGvaZmMrfpEV3TIblWlorFwEQ5UhHeGuVslc+
eN4r6MzOumbMdENFQgB8d3D0vFnoVsLbbL5/3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b1YdODjbk8HFhbv22dlzSJPK8onB4y/bTVR6bwet5BZoTYdYXUmOZH419afEKigqx51IMqa6rnXU
3J62hXejiIyZsm1mV6d/ZILTIg4MvKp/nsB+nzk3mwrxlbUBSjb5Gs4KJEM3QfmnigtYMQ5rNsWx
xO1OBkWglwIieiVxJRpIzrM1m6NiWCqcL1cvpMI1IywHrEeI+DhZWAgf2c+NGLeogq0I5stGLWyl
7mUNnFVREZS2ztdL9JeVlYFnkm9YAu/rEpRnd/ZFnUmo5LDgPLxnWIoTIbnJ9ETXA3VKs5m8RjLa
Y80BwwVZ8VpAYtcyfGThAvkMUN1XkU+RBOhB0w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jw11/jyPzYF09qKNLzRASveW80p2lDhif/7GSzkqz1ay8ziMYjGu2PXCgyziHf07D1ydjBZ2Oj+T
1TciExFJYUoS4v8yaGxNYIeVg4lCZtiWwMwIjWi5TbX5hyZCCFDUioAcm2Er0tzXe+UuWzkM8uEj
VcZMHxrNXFh3ip5Q5HwOhZJLT59ez98d86/DgXZNDnY1jAn3tjdLiP3facR+GKZ2RlNKOTvP6BNt
RMIiYfDGS6i/0a2j9G97hV2faBZ9PX1JyNer2z3gD5/XUNbE3bPLm+xmhpk1/K7GiF3yvAO1dtiL
5Mg52QRrud8v05hWjH6y7rmg+wiBc1bnMIMVaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fl4hr4ffL2ipdctGR3wKDxExY0Js9MyH40PggUq8phVTmC/+yh3o39he83PPrp8Yi3T7tzGHViey
qXOfrRHB975ZTLsiLps4g0lpDzOy30r+ko7KhZlqGAfj1VEwKp+Meo4cOy+LB5LXTF9gn2lDqy3Y
Pla0E7MsaddTceZCN0HcT4O76aa6gCYO57nbZ2/66lOffwbRGyqukEWWpsuLENynTfZ8fwyY2kdH
IfOaaLIj0ejENpFVLAkeAhbhzFzO6CWsJ8mkq4AUxeSt52ukWCXoWUh3cFAeuIs6qZ7xPTDTOAVR
H7eHVgnWy+YK2K0Hsgyw+7UMjbnZ1v2wuvZ+bg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LaT9uncrmT0racgoldqDNxJ4Brjhk4tBOTUNOyivHgwPk1f4PF/mhXIFYuSRE+t73SHCAGhrufH3
SvtZDlGe0B76wqFecpx7r8H8P976/5cQWohbO1yrnxmXdza6NOt+f8l82jsugYzuiFB3WaJCt5e0
IQt78ctTMjHUpXhNQyVrILv91Ct/jh5lkL42W3hparjKz6g4AK5Zw3Z7b9oyWvs9VydCsnh0oOSk
Hw7BRCsf09Ngc8drvREotWWD4+fn1aOrMRkZCAfS4oqQElG/2aijxY4BkBulSGPcXK4NdCag98Qb
cUHCJTWC2Vh78wjSqFr9qUmhHhKEtPP3JmHtBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29456)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
