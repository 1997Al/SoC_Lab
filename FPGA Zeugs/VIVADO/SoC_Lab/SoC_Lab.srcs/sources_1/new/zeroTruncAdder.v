`timescale 1ns / 1ps

module zeroTruncAdder #(parameter N = 16, K=4)
    (i_A, i_B, o_Cout, o_Sum);
    input[N-1:0] i_A, i_B;
    output[N-1:0] o_Sum;
    output o_Cout;

    wire[N:K] w_carryChain;
                
    genvar i;
    //create N instances of N accurate adders
    generate
        for(i = 0; i < N; i = i+1) begin
          if(i < K) begin
                    zeroTruncBits zeroTrunc (
                      .o_Out(o_Sum[i]));
          end
          else begin 
                    accuAdd accuOneBitAdder (
                    .i_A(i_A[i]),
                    .i_B(i_B[i]),
                    .i_Cin(w_carryChain[i]),
                    .o_Cout(w_carryChain[i+1]),
                    .o_Sum(o_Sum[i])); 
          end
        end
    endgenerate

    
    assign w_carryChain[K] = 0;
    assign o_Cout = w_carryChain[N];//always 0

endmodule

