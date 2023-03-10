`timescale 1ns / 1ps


module Dual_Adder #(parameter N = 16, K_0=4, K_1=8)
    (input[N-1:0] i_A, 
    input[N-1:0] i_B, 
    output [N-1:0] o_Sum_0, 
    output [N-1:0] o_Sum_1,
    output o_cout_0,
    output o_cout_1);
    
    //create two N-bit instaces of the Adder design under test with different degrees of approximation K_0, K_1
    loaAdder #(.N(N), .K(K_0)) adder0 (.i_A(i_A), .i_B(i_B), .o_Sum(o_Sum_0), .o_Cout(o_cout_0));
    loaAdder #(.N(N), .K(K_1)) adder1 (.i_A(i_A), .i_B(i_B), .o_Sum(o_Sum_1), .o_Cout(o_cout_1));
    
endmodule
