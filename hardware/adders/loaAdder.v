module loaAdder #(parameter N = 4, K=0)
    (i_A, i_B, o_Cout, o_Sum);
    input[N-1:0] i_A, i_B;
    output[N-1:0] o_Sum;
    output o_Cout;

    wire[N:K] w_carryChain;
    reg r_carryChain;
                
    genvar i;
    //create N instances of N accurate adders
    generate
        for(i = 0; i < N; i = i+1) begin
          if(i < K) begin
                    loaBits loa (
                      .i_A(i_A[i]),
                      .i_B(i_B[i]),
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
    
    always @(i_A or i_B) begin
    
        if(K == 0 )
            r_carryChain = 0;
        else 
            r_carryChain = i_A[K-1] & i_B[K-1];

    end

    
    assign w_carryChain[K] = r_carryChain;
    assign o_Cout = w_carryChain[N];//always 0

endmodule

