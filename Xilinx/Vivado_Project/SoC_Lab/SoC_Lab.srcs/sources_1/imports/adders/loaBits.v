module loaBits (i_A, i_B, o_Out);
    input i_A, i_B;
    output  o_Out;
 
    assign o_Out = i_A | i_B;

endmodule
