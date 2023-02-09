// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Feb  9 10:48:10 2023
// Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Master/SoC_Lab/Xilinx/SoC_Lab/SoC_Lab.gen/sources_1/bd/design_1/ip/design_1_ready_checker_0_0/design_1_ready_checker_0_0_sim_netlist.v
// Design      : design_1_ready_checker_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ready_checker_0_0,ready_checker,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ready_checker,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_ready_checker_0_0
   (i_clk,
    i_IN,
    i_rst,
    o_rdy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_clk;
  input [15:0]i_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rst;
  output o_rdy;

  wire [15:0]i_IN;
  wire i_clk;
  wire i_rst;
  wire o_rdy;

  design_1_ready_checker_0_0_ready_checker inst
       (.i_IN(i_IN),
        .i_clk(i_clk),
        .i_rst(i_rst),
        .o_rdy(o_rdy));
endmodule

(* ORIG_REF_NAME = "ready_checker" *) 
module design_1_ready_checker_0_0_ready_checker
   (o_rdy,
    i_IN,
    i_clk,
    i_rst);
  output o_rdy;
  input [15:0]i_IN;
  input i_clk;
  input i_rst;

  wire cycles;
  wire cycles1;
  wire cycles1_carry__0_i_1_n_0;
  wire cycles1_carry__0_i_2_n_0;
  wire cycles1_carry__0_n_3;
  wire cycles1_carry_i_1_n_0;
  wire cycles1_carry_i_2_n_0;
  wire cycles1_carry_i_3_n_0;
  wire cycles1_carry_i_4_n_0;
  wire cycles1_carry_n_0;
  wire cycles1_carry_n_1;
  wire cycles1_carry_n_2;
  wire cycles1_carry_n_3;
  wire \cycles[0]_i_1_n_0 ;
  wire \cycles[0]_i_4_n_0 ;
  wire \cycles[0]_i_5_n_0 ;
  wire \cycles[0]_i_6_n_0 ;
  wire [31:0]cycles_reg;
  wire \cycles_reg[0]_i_3_n_0 ;
  wire \cycles_reg[0]_i_3_n_1 ;
  wire \cycles_reg[0]_i_3_n_2 ;
  wire \cycles_reg[0]_i_3_n_3 ;
  wire \cycles_reg[0]_i_3_n_4 ;
  wire \cycles_reg[0]_i_3_n_5 ;
  wire \cycles_reg[0]_i_3_n_6 ;
  wire \cycles_reg[0]_i_3_n_7 ;
  wire \cycles_reg[12]_i_1_n_0 ;
  wire \cycles_reg[12]_i_1_n_1 ;
  wire \cycles_reg[12]_i_1_n_2 ;
  wire \cycles_reg[12]_i_1_n_3 ;
  wire \cycles_reg[12]_i_1_n_4 ;
  wire \cycles_reg[12]_i_1_n_5 ;
  wire \cycles_reg[12]_i_1_n_6 ;
  wire \cycles_reg[12]_i_1_n_7 ;
  wire \cycles_reg[16]_i_1_n_0 ;
  wire \cycles_reg[16]_i_1_n_1 ;
  wire \cycles_reg[16]_i_1_n_2 ;
  wire \cycles_reg[16]_i_1_n_3 ;
  wire \cycles_reg[16]_i_1_n_4 ;
  wire \cycles_reg[16]_i_1_n_5 ;
  wire \cycles_reg[16]_i_1_n_6 ;
  wire \cycles_reg[16]_i_1_n_7 ;
  wire \cycles_reg[20]_i_1_n_0 ;
  wire \cycles_reg[20]_i_1_n_1 ;
  wire \cycles_reg[20]_i_1_n_2 ;
  wire \cycles_reg[20]_i_1_n_3 ;
  wire \cycles_reg[20]_i_1_n_4 ;
  wire \cycles_reg[20]_i_1_n_5 ;
  wire \cycles_reg[20]_i_1_n_6 ;
  wire \cycles_reg[20]_i_1_n_7 ;
  wire \cycles_reg[24]_i_1_n_0 ;
  wire \cycles_reg[24]_i_1_n_1 ;
  wire \cycles_reg[24]_i_1_n_2 ;
  wire \cycles_reg[24]_i_1_n_3 ;
  wire \cycles_reg[24]_i_1_n_4 ;
  wire \cycles_reg[24]_i_1_n_5 ;
  wire \cycles_reg[24]_i_1_n_6 ;
  wire \cycles_reg[24]_i_1_n_7 ;
  wire \cycles_reg[28]_i_1_n_1 ;
  wire \cycles_reg[28]_i_1_n_2 ;
  wire \cycles_reg[28]_i_1_n_3 ;
  wire \cycles_reg[28]_i_1_n_4 ;
  wire \cycles_reg[28]_i_1_n_5 ;
  wire \cycles_reg[28]_i_1_n_6 ;
  wire \cycles_reg[28]_i_1_n_7 ;
  wire \cycles_reg[4]_i_1_n_0 ;
  wire \cycles_reg[4]_i_1_n_1 ;
  wire \cycles_reg[4]_i_1_n_2 ;
  wire \cycles_reg[4]_i_1_n_3 ;
  wire \cycles_reg[4]_i_1_n_4 ;
  wire \cycles_reg[4]_i_1_n_5 ;
  wire \cycles_reg[4]_i_1_n_6 ;
  wire \cycles_reg[4]_i_1_n_7 ;
  wire \cycles_reg[8]_i_1_n_0 ;
  wire \cycles_reg[8]_i_1_n_1 ;
  wire \cycles_reg[8]_i_1_n_2 ;
  wire \cycles_reg[8]_i_1_n_3 ;
  wire \cycles_reg[8]_i_1_n_4 ;
  wire \cycles_reg[8]_i_1_n_5 ;
  wire \cycles_reg[8]_i_1_n_6 ;
  wire \cycles_reg[8]_i_1_n_7 ;
  wire [15:0]i_IN;
  wire i_clk;
  wire i_rst;
  wire o_rdy;
  wire o_rdy_i_10_n_0;
  wire o_rdy_i_1_n_0;
  wire o_rdy_i_2_n_0;
  wire o_rdy_i_3_n_0;
  wire o_rdy_i_4_n_0;
  wire o_rdy_i_5_n_0;
  wire o_rdy_i_6_n_0;
  wire o_rdy_i_7_n_0;
  wire o_rdy_i_8_n_0;
  wire o_rdy_i_9_n_0;
  wire [15:0]old;
  wire [3:0]NLW_cycles1_carry_O_UNCONNECTED;
  wire [3:2]NLW_cycles1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cycles1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_cycles_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 cycles1_carry
       (.CI(1'b0),
        .CO({cycles1_carry_n_0,cycles1_carry_n_1,cycles1_carry_n_2,cycles1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cycles1_carry_O_UNCONNECTED[3:0]),
        .S({cycles1_carry_i_1_n_0,cycles1_carry_i_2_n_0,cycles1_carry_i_3_n_0,cycles1_carry_i_4_n_0}));
  CARRY4 cycles1_carry__0
       (.CI(cycles1_carry_n_0),
        .CO({NLW_cycles1_carry__0_CO_UNCONNECTED[3:2],cycles1,cycles1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cycles1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,cycles1_carry__0_i_1_n_0,cycles1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cycles1_carry__0_i_1
       (.I0(i_IN[15]),
        .I1(old[15]),
        .O(cycles1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry__0_i_2
       (.I0(old[12]),
        .I1(i_IN[12]),
        .I2(old[13]),
        .I3(i_IN[13]),
        .I4(i_IN[14]),
        .I5(old[14]),
        .O(cycles1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_1
       (.I0(old[9]),
        .I1(i_IN[9]),
        .I2(old[10]),
        .I3(i_IN[10]),
        .I4(i_IN[11]),
        .I5(old[11]),
        .O(cycles1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_2
       (.I0(old[6]),
        .I1(i_IN[6]),
        .I2(old[7]),
        .I3(i_IN[7]),
        .I4(i_IN[8]),
        .I5(old[8]),
        .O(cycles1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_3
       (.I0(old[5]),
        .I1(i_IN[5]),
        .I2(old[3]),
        .I3(i_IN[3]),
        .I4(i_IN[4]),
        .I5(old[4]),
        .O(cycles1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cycles1_carry_i_4
       (.I0(old[2]),
        .I1(i_IN[2]),
        .I2(old[0]),
        .I3(i_IN[0]),
        .I4(i_IN[1]),
        .I5(old[1]),
        .O(cycles1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \cycles[0]_i_1 
       (.I0(cycles1),
        .I1(i_rst),
        .O(\cycles[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \cycles[0]_i_2 
       (.I0(o_rdy_i_2_n_0),
        .I1(o_rdy_i_3_n_0),
        .I2(\cycles[0]_i_4_n_0 ),
        .I3(\cycles[0]_i_5_n_0 ),
        .O(cycles));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cycles[0]_i_4 
       (.I0(cycles_reg[11]),
        .I1(cycles_reg[31]),
        .I2(cycles_reg[5]),
        .I3(cycles_reg[16]),
        .I4(o_rdy_i_9_n_0),
        .O(\cycles[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \cycles[0]_i_5 
       (.I0(cycles_reg[15]),
        .I1(cycles_reg[24]),
        .I2(cycles_reg[0]),
        .I3(cycles_reg[7]),
        .I4(o_rdy_i_7_n_0),
        .O(\cycles[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycles[0]_i_6 
       (.I0(cycles_reg[0]),
        .O(\cycles[0]_i_6_n_0 ));
  FDRE \cycles_reg[0] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[0]_i_3_n_7 ),
        .Q(cycles_reg[0]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cycles_reg[0]_i_3_n_0 ,\cycles_reg[0]_i_3_n_1 ,\cycles_reg[0]_i_3_n_2 ,\cycles_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cycles_reg[0]_i_3_n_4 ,\cycles_reg[0]_i_3_n_5 ,\cycles_reg[0]_i_3_n_6 ,\cycles_reg[0]_i_3_n_7 }),
        .S({cycles_reg[3:1],\cycles[0]_i_6_n_0 }));
  FDRE \cycles_reg[10] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[8]_i_1_n_5 ),
        .Q(cycles_reg[10]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[11] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[8]_i_1_n_4 ),
        .Q(cycles_reg[11]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[12] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[12]_i_1_n_7 ),
        .Q(cycles_reg[12]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[12]_i_1 
       (.CI(\cycles_reg[8]_i_1_n_0 ),
        .CO({\cycles_reg[12]_i_1_n_0 ,\cycles_reg[12]_i_1_n_1 ,\cycles_reg[12]_i_1_n_2 ,\cycles_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[12]_i_1_n_4 ,\cycles_reg[12]_i_1_n_5 ,\cycles_reg[12]_i_1_n_6 ,\cycles_reg[12]_i_1_n_7 }),
        .S(cycles_reg[15:12]));
  FDRE \cycles_reg[13] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[12]_i_1_n_6 ),
        .Q(cycles_reg[13]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[14] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[12]_i_1_n_5 ),
        .Q(cycles_reg[14]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[15] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[12]_i_1_n_4 ),
        .Q(cycles_reg[15]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[16] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[16]_i_1_n_7 ),
        .Q(cycles_reg[16]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[16]_i_1 
       (.CI(\cycles_reg[12]_i_1_n_0 ),
        .CO({\cycles_reg[16]_i_1_n_0 ,\cycles_reg[16]_i_1_n_1 ,\cycles_reg[16]_i_1_n_2 ,\cycles_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[16]_i_1_n_4 ,\cycles_reg[16]_i_1_n_5 ,\cycles_reg[16]_i_1_n_6 ,\cycles_reg[16]_i_1_n_7 }),
        .S(cycles_reg[19:16]));
  FDRE \cycles_reg[17] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[16]_i_1_n_6 ),
        .Q(cycles_reg[17]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[18] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[16]_i_1_n_5 ),
        .Q(cycles_reg[18]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[19] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[16]_i_1_n_4 ),
        .Q(cycles_reg[19]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[1] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[0]_i_3_n_6 ),
        .Q(cycles_reg[1]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[20] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[20]_i_1_n_7 ),
        .Q(cycles_reg[20]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[20]_i_1 
       (.CI(\cycles_reg[16]_i_1_n_0 ),
        .CO({\cycles_reg[20]_i_1_n_0 ,\cycles_reg[20]_i_1_n_1 ,\cycles_reg[20]_i_1_n_2 ,\cycles_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[20]_i_1_n_4 ,\cycles_reg[20]_i_1_n_5 ,\cycles_reg[20]_i_1_n_6 ,\cycles_reg[20]_i_1_n_7 }),
        .S(cycles_reg[23:20]));
  FDRE \cycles_reg[21] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[20]_i_1_n_6 ),
        .Q(cycles_reg[21]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[22] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[20]_i_1_n_5 ),
        .Q(cycles_reg[22]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[23] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[20]_i_1_n_4 ),
        .Q(cycles_reg[23]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[24] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[24]_i_1_n_7 ),
        .Q(cycles_reg[24]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[24]_i_1 
       (.CI(\cycles_reg[20]_i_1_n_0 ),
        .CO({\cycles_reg[24]_i_1_n_0 ,\cycles_reg[24]_i_1_n_1 ,\cycles_reg[24]_i_1_n_2 ,\cycles_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[24]_i_1_n_4 ,\cycles_reg[24]_i_1_n_5 ,\cycles_reg[24]_i_1_n_6 ,\cycles_reg[24]_i_1_n_7 }),
        .S(cycles_reg[27:24]));
  FDRE \cycles_reg[25] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[24]_i_1_n_6 ),
        .Q(cycles_reg[25]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[26] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[24]_i_1_n_5 ),
        .Q(cycles_reg[26]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[27] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[24]_i_1_n_4 ),
        .Q(cycles_reg[27]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[28] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[28]_i_1_n_7 ),
        .Q(cycles_reg[28]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[28]_i_1 
       (.CI(\cycles_reg[24]_i_1_n_0 ),
        .CO({\NLW_cycles_reg[28]_i_1_CO_UNCONNECTED [3],\cycles_reg[28]_i_1_n_1 ,\cycles_reg[28]_i_1_n_2 ,\cycles_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[28]_i_1_n_4 ,\cycles_reg[28]_i_1_n_5 ,\cycles_reg[28]_i_1_n_6 ,\cycles_reg[28]_i_1_n_7 }),
        .S(cycles_reg[31:28]));
  FDRE \cycles_reg[29] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[28]_i_1_n_6 ),
        .Q(cycles_reg[29]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[2] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[0]_i_3_n_5 ),
        .Q(cycles_reg[2]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[30] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[28]_i_1_n_5 ),
        .Q(cycles_reg[30]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[31] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[28]_i_1_n_4 ),
        .Q(cycles_reg[31]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[3] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[0]_i_3_n_4 ),
        .Q(cycles_reg[3]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[4] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[4]_i_1_n_7 ),
        .Q(cycles_reg[4]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[4]_i_1 
       (.CI(\cycles_reg[0]_i_3_n_0 ),
        .CO({\cycles_reg[4]_i_1_n_0 ,\cycles_reg[4]_i_1_n_1 ,\cycles_reg[4]_i_1_n_2 ,\cycles_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[4]_i_1_n_4 ,\cycles_reg[4]_i_1_n_5 ,\cycles_reg[4]_i_1_n_6 ,\cycles_reg[4]_i_1_n_7 }),
        .S(cycles_reg[7:4]));
  FDRE \cycles_reg[5] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[4]_i_1_n_6 ),
        .Q(cycles_reg[5]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[6] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[4]_i_1_n_5 ),
        .Q(cycles_reg[6]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[7] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[4]_i_1_n_4 ),
        .Q(cycles_reg[7]),
        .R(\cycles[0]_i_1_n_0 ));
  FDRE \cycles_reg[8] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[8]_i_1_n_7 ),
        .Q(cycles_reg[8]),
        .R(\cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cycles_reg[8]_i_1 
       (.CI(\cycles_reg[4]_i_1_n_0 ),
        .CO({\cycles_reg[8]_i_1_n_0 ,\cycles_reg[8]_i_1_n_1 ,\cycles_reg[8]_i_1_n_2 ,\cycles_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycles_reg[8]_i_1_n_4 ,\cycles_reg[8]_i_1_n_5 ,\cycles_reg[8]_i_1_n_6 ,\cycles_reg[8]_i_1_n_7 }),
        .S(cycles_reg[11:8]));
  FDRE \cycles_reg[9] 
       (.C(i_clk),
        .CE(cycles),
        .D(\cycles_reg[8]_i_1_n_6 ),
        .Q(cycles_reg[9]),
        .R(\cycles[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAFFFFFFFFFFFF)) 
    o_rdy_i_1
       (.I0(o_rdy),
        .I1(o_rdy_i_2_n_0),
        .I2(o_rdy_i_3_n_0),
        .I3(o_rdy_i_4_n_0),
        .I4(cycles1),
        .I5(i_rst),
        .O(o_rdy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_rdy_i_10
       (.I0(cycles_reg[16]),
        .I1(cycles_reg[5]),
        .I2(cycles_reg[31]),
        .I3(cycles_reg[11]),
        .O(o_rdy_i_10_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    o_rdy_i_2
       (.I0(cycles_reg[12]),
        .I1(cycles_reg[25]),
        .I2(cycles_reg[1]),
        .I3(cycles_reg[2]),
        .I4(o_rdy_i_5_n_0),
        .O(o_rdy_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_rdy_i_3
       (.I0(cycles_reg[8]),
        .I1(cycles_reg[29]),
        .I2(cycles_reg[4]),
        .I3(cycles_reg[3]),
        .I4(o_rdy_i_6_n_0),
        .O(o_rdy_i_3_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    o_rdy_i_4
       (.I0(o_rdy_i_7_n_0),
        .I1(o_rdy_i_8_n_0),
        .I2(o_rdy_i_9_n_0),
        .I3(o_rdy_i_10_n_0),
        .O(o_rdy_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_rdy_i_5
       (.I0(cycles_reg[26]),
        .I1(cycles_reg[14]),
        .I2(cycles_reg[23]),
        .I3(cycles_reg[6]),
        .O(o_rdy_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_rdy_i_6
       (.I0(cycles_reg[30]),
        .I1(cycles_reg[10]),
        .I2(cycles_reg[21]),
        .I3(cycles_reg[22]),
        .O(o_rdy_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_rdy_i_7
       (.I0(cycles_reg[27]),
        .I1(cycles_reg[13]),
        .I2(cycles_reg[19]),
        .I3(cycles_reg[20]),
        .O(o_rdy_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    o_rdy_i_8
       (.I0(cycles_reg[7]),
        .I1(cycles_reg[0]),
        .I2(cycles_reg[24]),
        .I3(cycles_reg[15]),
        .O(o_rdy_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_rdy_i_9
       (.I0(cycles_reg[28]),
        .I1(cycles_reg[9]),
        .I2(cycles_reg[18]),
        .I3(cycles_reg[17]),
        .O(o_rdy_i_9_n_0));
  FDRE o_rdy_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(o_rdy_i_1_n_0),
        .Q(o_rdy),
        .R(1'b0));
  FDRE \old_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[0]),
        .Q(old[0]),
        .R(1'b0));
  FDRE \old_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[10]),
        .Q(old[10]),
        .R(1'b0));
  FDRE \old_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[11]),
        .Q(old[11]),
        .R(1'b0));
  FDRE \old_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[12]),
        .Q(old[12]),
        .R(1'b0));
  FDRE \old_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[13]),
        .Q(old[13]),
        .R(1'b0));
  FDRE \old_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[14]),
        .Q(old[14]),
        .R(1'b0));
  FDRE \old_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[15]),
        .Q(old[15]),
        .R(1'b0));
  FDRE \old_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[1]),
        .Q(old[1]),
        .R(1'b0));
  FDRE \old_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[2]),
        .Q(old[2]),
        .R(1'b0));
  FDRE \old_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[3]),
        .Q(old[3]),
        .R(1'b0));
  FDRE \old_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[4]),
        .Q(old[4]),
        .R(1'b0));
  FDRE \old_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[5]),
        .Q(old[5]),
        .R(1'b0));
  FDRE \old_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[6]),
        .Q(old[6]),
        .R(1'b0));
  FDRE \old_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[7]),
        .Q(old[7]),
        .R(1'b0));
  FDRE \old_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[8]),
        .Q(old[8]),
        .R(1'b0));
  FDRE \old_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_IN[9]),
        .Q(old[9]),
        .R(1'b0));
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
