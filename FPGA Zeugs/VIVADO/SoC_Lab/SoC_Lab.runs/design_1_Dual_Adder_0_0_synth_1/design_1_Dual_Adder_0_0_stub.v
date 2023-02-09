// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb  9 10:48:10 2023
// Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Dual_Adder_0_0_stub.v
// Design      : design_1_Dual_Adder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Dual_Adder,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_A, i_B, o_Sum_0, o_Sum_1)
/* synthesis syn_black_box black_box_pad_pin="i_A[15:0],i_B[15:0],o_Sum_0[15:0],o_Sum_1[15:0]" */;
  input [15:0]i_A;
  input [15:0]i_B;
  output [15:0]o_Sum_0;
  output [15:0]o_Sum_1;
endmodule
