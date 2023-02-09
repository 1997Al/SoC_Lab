// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb  9 10:48:10 2023
// Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Master/SoC_Lab/Xilinx/SoC_Lab/SoC_Lab.gen/sources_1/bd/design_1/ip/design_1_Dual_Adder_0_0/design_1_Dual_Adder_0_0_sim_netlist.v
// Design      : design_1_Dual_Adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Dual_Adder_0_0,Dual_Adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Dual_Adder,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_Dual_Adder_0_0
   (i_A,
    i_B,
    o_Sum_0,
    o_Sum_1);
  input [15:0]i_A;
  input [15:0]i_B;
  output [15:0]o_Sum_0;
  output [15:0]o_Sum_1;

  wire [15:0]i_A;
  wire [15:0]i_B;
  wire \inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0 ;
  wire \inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0 ;
  wire \inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0 ;
  wire \inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0 ;
  wire \inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0 ;
  wire \inst/adder0/w_carryChain_1 ;
  wire \inst/adder0/w_carryChain_10 ;
  wire \inst/adder0/w_carryChain_3 ;
  wire \inst/adder0/w_carryChain_8 ;
  wire \inst/adder1/w_carryChain_2 ;
  wire \inst/adder1/w_carryChain_4 ;
  wire \inst/adder1/w_carryChain_6 ;
  wire [15:0]o_Sum_0;
  wire \o_Sum_0[11]_INST_0_i_3_n_0 ;
  wire \o_Sum_0[11]_INST_0_i_4_n_0 ;
  wire \o_Sum_0[15]_INST_0_i_2_n_0 ;
  wire \o_Sum_0[15]_INST_0_i_3_n_0 ;
  wire \o_Sum_0[15]_INST_0_i_4_n_0 ;
  wire [15:4]\^o_Sum_1 ;

  assign o_Sum_1[15:4] = \^o_Sum_1 [15:4];
  assign o_Sum_1[3:0] = o_Sum_0[3:0];
  LUT5 #(
    .INIT(32'h99969696)) 
    \o_Sum_0[10]_INST_0 
       (.I0(i_A[10]),
        .I1(i_B[10]),
        .I2(\inst/adder1/w_carryChain_2 ),
        .I3(\o_Sum_0[11]_INST_0_i_3_n_0 ),
        .I4(\o_Sum_0[11]_INST_0_i_4_n_0 ),
        .O(o_Sum_0[10]));
  LUT6 #(
    .INIT(64'h555A566A566A566A)) 
    \o_Sum_0[11]_INST_0 
       (.I0(\inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0 ),
        .I1(\inst/adder1/w_carryChain_2 ),
        .I2(i_B[10]),
        .I3(i_A[10]),
        .I4(\o_Sum_0[11]_INST_0_i_3_n_0 ),
        .I5(\o_Sum_0[11]_INST_0_i_4_n_0 ),
        .O(o_Sum_0[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \o_Sum_0[11]_INST_0_i_1 
       (.I0(i_B[11]),
        .I1(i_A[11]),
        .O(\inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0 ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \o_Sum_0[11]_INST_0_i_2 
       (.I0(i_A[7]),
        .I1(i_B[7]),
        .I2(i_B[8]),
        .I3(i_A[8]),
        .I4(i_B[9]),
        .I5(i_A[9]),
        .O(\inst/adder1/w_carryChain_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \o_Sum_0[11]_INST_0_i_3 
       (.I0(i_A[9]),
        .I1(i_B[9]),
        .I2(i_A[8]),
        .I3(i_B[8]),
        .O(\o_Sum_0[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \o_Sum_0[11]_INST_0_i_4 
       (.I0(\inst/adder0/w_carryChain_3 ),
        .I1(i_A[7]),
        .I2(i_B[7]),
        .O(\o_Sum_0[11]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_Sum_0[12]_INST_0 
       (.I0(i_A[12]),
        .I1(i_B[12]),
        .I2(\inst/adder0/w_carryChain_8 ),
        .O(o_Sum_0[12]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_0[13]_INST_0 
       (.I0(i_A[13]),
        .I1(i_B[13]),
        .I2(i_A[12]),
        .I3(i_B[12]),
        .I4(\inst/adder0/w_carryChain_8 ),
        .O(o_Sum_0[13]));
  LUT6 #(
    .INIT(64'h555656AA556A6AAA)) 
    \o_Sum_0[14]_INST_0 
       (.I0(\inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0 ),
        .I1(i_A[12]),
        .I2(i_B[12]),
        .I3(i_B[13]),
        .I4(i_A[13]),
        .I5(\inst/adder0/w_carryChain_8 ),
        .O(o_Sum_0[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \o_Sum_0[14]_INST_0_i_1 
       (.I0(i_B[14]),
        .I1(i_A[14]),
        .O(\inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \o_Sum_0[14]_INST_0_i_2 
       (.I0(\inst/adder0/w_carryChain_3 ),
        .I1(\inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0 ),
        .I2(\inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0 ),
        .I3(\inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0 ),
        .I4(\o_Sum_0[11]_INST_0_i_3_n_0 ),
        .I5(\inst/adder1/w_carryChain_4 ),
        .O(\inst/adder0/w_carryChain_8 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Sum_0[14]_INST_0_i_3 
       (.I0(i_B[7]),
        .I1(i_A[7]),
        .O(\inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Sum_0[14]_INST_0_i_4 
       (.I0(i_B[10]),
        .I1(i_A[10]),
        .O(\inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_0[15]_INST_0 
       (.I0(i_A[15]),
        .I1(i_B[15]),
        .I2(i_A[14]),
        .I3(i_B[14]),
        .I4(\inst/adder0/w_carryChain_10 ),
        .O(o_Sum_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF800000)) 
    \o_Sum_0[15]_INST_0_i_1 
       (.I0(\inst/adder0/w_carryChain_3 ),
        .I1(\o_Sum_0[15]_INST_0_i_2_n_0 ),
        .I2(\o_Sum_0[11]_INST_0_i_3_n_0 ),
        .I3(\inst/adder1/w_carryChain_4 ),
        .I4(\o_Sum_0[15]_INST_0_i_3_n_0 ),
        .I5(\o_Sum_0[15]_INST_0_i_4_n_0 ),
        .O(\inst/adder0/w_carryChain_10 ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \o_Sum_0[15]_INST_0_i_2 
       (.I0(i_B[10]),
        .I1(i_A[10]),
        .I2(i_B[11]),
        .I3(i_A[11]),
        .I4(i_A[7]),
        .I5(i_B[7]),
        .O(\o_Sum_0[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \o_Sum_0[15]_INST_0_i_3 
       (.I0(i_A[13]),
        .I1(i_B[13]),
        .I2(i_A[12]),
        .I3(i_B[12]),
        .O(\o_Sum_0[15]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \o_Sum_0[15]_INST_0_i_4 
       (.I0(i_A[12]),
        .I1(i_B[12]),
        .I2(i_B[13]),
        .I3(i_A[13]),
        .O(\o_Sum_0[15]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \o_Sum_0[4]_INST_0 
       (.I0(i_A[4]),
        .I1(i_B[4]),
        .I2(i_B[3]),
        .I3(i_A[3]),
        .O(o_Sum_0[4]));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    \o_Sum_0[5]_INST_0 
       (.I0(i_A[5]),
        .I1(i_B[5]),
        .I2(i_A[4]),
        .I3(i_B[4]),
        .I4(i_B[3]),
        .I5(i_A[3]),
        .O(o_Sum_0[5]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_0[6]_INST_0 
       (.I0(i_A[6]),
        .I1(i_B[6]),
        .I2(i_A[5]),
        .I3(i_B[5]),
        .I4(\inst/adder0/w_carryChain_1 ),
        .O(o_Sum_0[6]));
  LUT4 #(
    .INIT(16'hF880)) 
    \o_Sum_0[6]_INST_0_i_1 
       (.I0(i_A[3]),
        .I1(i_B[3]),
        .I2(i_B[4]),
        .I3(i_A[4]),
        .O(\inst/adder0/w_carryChain_1 ));
  LUT3 #(
    .INIT(8'h96)) 
    \o_Sum_0[7]_INST_0 
       (.I0(i_A[7]),
        .I1(i_B[7]),
        .I2(\inst/adder0/w_carryChain_3 ),
        .O(o_Sum_0[7]));
  LUT5 #(
    .INIT(32'hFCE8E8C0)) 
    \o_Sum_0[7]_INST_0_i_1 
       (.I0(\inst/adder0/w_carryChain_1 ),
        .I1(i_A[6]),
        .I2(i_B[6]),
        .I3(i_B[5]),
        .I4(i_A[5]),
        .O(\inst/adder0/w_carryChain_3 ));
  LUT5 #(
    .INIT(32'h99969696)) 
    \o_Sum_0[8]_INST_0 
       (.I0(i_A[8]),
        .I1(i_B[8]),
        .I2(\o_Sum_0[11]_INST_0_i_4_n_0 ),
        .I3(i_A[7]),
        .I4(i_B[7]),
        .O(o_Sum_0[8]));
  LUT6 #(
    .INIT(64'h555555AA556A6AAA)) 
    \o_Sum_0[9]_INST_0 
       (.I0(\inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0 ),
        .I1(i_A[7]),
        .I2(i_B[7]),
        .I3(i_B[8]),
        .I4(i_A[8]),
        .I5(\o_Sum_0[11]_INST_0_i_4_n_0 ),
        .O(o_Sum_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_Sum_0[9]_INST_0_i_1 
       (.I0(i_B[9]),
        .I1(i_A[9]),
        .O(\inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[0]_INST_0 
       (.I0(i_A[0]),
        .I1(i_B[0]),
        .O(o_Sum_0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_Sum_1[10]_INST_0 
       (.I0(i_A[10]),
        .I1(i_B[10]),
        .I2(\inst/adder1/w_carryChain_2 ),
        .O(\^o_Sum_1 [10]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_1[11]_INST_0 
       (.I0(i_A[11]),
        .I1(i_B[11]),
        .I2(i_A[10]),
        .I3(i_B[10]),
        .I4(\inst/adder1/w_carryChain_2 ),
        .O(\^o_Sum_1 [11]));
  LUT3 #(
    .INIT(8'h96)) 
    \o_Sum_1[12]_INST_0 
       (.I0(i_A[12]),
        .I1(i_B[12]),
        .I2(\inst/adder1/w_carryChain_4 ),
        .O(\^o_Sum_1 [12]));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_1[13]_INST_0 
       (.I0(i_A[13]),
        .I1(i_B[13]),
        .I2(i_A[12]),
        .I3(i_B[12]),
        .I4(\inst/adder1/w_carryChain_4 ),
        .O(\^o_Sum_1 [13]));
  LUT6 #(
    .INIT(64'h555656AA556A6AAA)) 
    \o_Sum_1[14]_INST_0 
       (.I0(\inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0 ),
        .I1(i_A[12]),
        .I2(i_B[12]),
        .I3(i_B[13]),
        .I4(i_A[13]),
        .I5(\inst/adder1/w_carryChain_4 ),
        .O(\^o_Sum_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \o_Sum_1[14]_INST_0_i_1 
       (.I0(\inst/adder1/w_carryChain_2 ),
        .I1(i_B[10]),
        .I2(i_A[10]),
        .I3(i_B[11]),
        .I4(i_A[11]),
        .O(\inst/adder1/w_carryChain_4 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \o_Sum_1[15]_INST_0 
       (.I0(i_A[15]),
        .I1(i_B[15]),
        .I2(i_A[14]),
        .I3(i_B[14]),
        .I4(\inst/adder1/w_carryChain_6 ),
        .O(\^o_Sum_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFCE8E8C0)) 
    \o_Sum_1[15]_INST_0_i_1 
       (.I0(\inst/adder1/w_carryChain_4 ),
        .I1(i_A[13]),
        .I2(i_B[13]),
        .I3(i_B[12]),
        .I4(i_A[12]),
        .O(\inst/adder1/w_carryChain_6 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[1]_INST_0 
       (.I0(i_A[1]),
        .I1(i_B[1]),
        .O(o_Sum_0[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[2]_INST_0 
       (.I0(i_A[2]),
        .I1(i_B[2]),
        .O(o_Sum_0[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[3]_INST_0 
       (.I0(i_B[3]),
        .I1(i_A[3]),
        .O(o_Sum_0[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[4]_INST_0 
       (.I0(i_B[4]),
        .I1(i_A[4]),
        .O(\^o_Sum_1 [4]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[5]_INST_0 
       (.I0(i_B[5]),
        .I1(i_A[5]),
        .O(\^o_Sum_1 [5]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[6]_INST_0 
       (.I0(i_B[6]),
        .I1(i_A[6]),
        .O(\^o_Sum_1 [6]));
  LUT2 #(
    .INIT(4'hE)) 
    \o_Sum_1[7]_INST_0 
       (.I0(i_B[7]),
        .I1(i_A[7]),
        .O(\^o_Sum_1 [7]));
  LUT4 #(
    .INIT(16'h9666)) 
    \o_Sum_1[8]_INST_0 
       (.I0(i_A[8]),
        .I1(i_B[8]),
        .I2(i_B[7]),
        .I3(i_A[7]),
        .O(\^o_Sum_1 [8]));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    \o_Sum_1[9]_INST_0 
       (.I0(i_A[9]),
        .I1(i_B[9]),
        .I2(i_A[8]),
        .I3(i_B[8]),
        .I4(i_B[7]),
        .I5(i_A[7]),
        .O(\^o_Sum_1 [9]));
endmodule
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
