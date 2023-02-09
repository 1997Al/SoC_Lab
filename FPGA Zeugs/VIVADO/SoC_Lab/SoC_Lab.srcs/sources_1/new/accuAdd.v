module accuAdd (i_A,i_B,i_Cin,o_Cout,o_Sum);
    input i_A, i_B, i_Cin;
    output  o_Cout, o_Sum;

    assign o_Cout = ((i_A ^ i_B) & i_Cin) | (i_A & i_B);
    assign o_Sum = i_Cin ^ (i_A ^ i_B);

endmodule
