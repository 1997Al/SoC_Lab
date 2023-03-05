`timescale 1ns / 1ps


module ready_checker #(parameter N=16, count=5)(
    input i_clk,
    input [N-1:0] i_IN,
    input i_rst,
    output reg o_rdy
    );
    
    integer cycles;
    reg [N-1:0] old;
    //reg ready;
    
    always @(posedge i_clk) begin
        
        if(i_rst == 0) begin
            //set all internals and output 0
            cycles <= 0;
            o_rdy <= 1;
            old <= {(N){1'b0}};
        end else begin
            if(old == i_IN) begin
                if(cycles == count) begin
                    o_rdy <= 0;
                end else begin
                    cycles <= cycles +1;
                end
            end else begin
                cycles <= 0;
                o_rdy <= 1;
            end
        end
        old <= i_IN;
        //o_rdy <= ready; 
    end
    
endmodule
