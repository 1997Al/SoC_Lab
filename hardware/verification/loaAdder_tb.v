`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module loaAdder_tb;

    localparam N = 4;//bit-width number of 1-Bit adders
    localparam K = 2;//number of approximate 1-Bit adders
    localparam num_of_testvectors = 2**(2*N);
    //values from testvectors
    reg [N-1:0] i_A, i_B;
    reg i_Cin,r_Cout;
    reg [N-1:0] r_Sum;

    //circuit outputs
    wire [N-1:0]o_Sum;
    wire o_Cout;

    //array of testvectors
    reg[3*N+1:0] testvectors [0:num_of_testvectors-1];

    //instantiate device under test
    loaAdder #(.N(N),.K(K)) NBitAdder (
        .i_A(i_A),
        .i_B(i_B),
        .o_Cout(o_Cout),
        .o_Sum(o_Sum));

    localparam  step = 30 ;

    //to write error details to file
    integer write_data;
    integer i;
    integer magnitude = 0;
    integer err = 0; 
    
    initial begin 
	    $dumpfile("out/loaAdder_tb.vcd");
        $dumpvars(0, loaAdder_tb);
      
        //readmemb = read the binary values from file
        //always use relative path from hw root folder 
        $readmemb("hardware/verification/testvectors.txt", testvectors);
        #step;#step;#step;#step;#step;

        //write error detail to file
        write_data = $fopen("hardware/verification_reports/errors_loaAdder.txt");
        #step;

        //total number of testvectors = 8
        for (i=0; i< num_of_testvectors; i=i+1) begin
            {i_A,i_B,r_Cout,r_Sum} = testvectors[i];
            #step;
            if (r_Sum != o_Sum || r_Cout != o_Cout) begin
                $fdisplay(write_data,"Error in testvector %0d with A=%b B=%b: carry=%b, sum=%b expected carry=%b, sum=%b",i + 1,i_A,i_B,o_Cout,o_Sum,r_Cout,r_Sum);
                if ({o_Cout,o_Sum} > {r_Cout,r_Sum}) begin
                    magnitude= (magnitude < ({o_Cout,o_Sum} - {r_Cout,r_Sum})) ? ({o_Cout,o_Sum} - {r_Cout,r_Sum}):magnitude;
                end else begin
                    magnitude= (magnitude < ({r_Cout,r_Sum} - {o_Cout,o_Sum})) ? ({r_Cout,r_Sum} - {o_Cout,o_Sum}):magnitude;
                end
                err += 1;
            end
        end

        if (err == 0) begin
            $display("All test cases passed!");
        end else begin
            $display("Number of errors: %0d", err);
            $display("Max error magnitude: %0d", magnitude);
        end

        // close the file
        $fclose(write_data);  
    end
endmodule
