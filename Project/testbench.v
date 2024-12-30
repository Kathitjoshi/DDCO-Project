// testbench.v
module testbench;

    // Testbench variables
    reg [7:0] data_in;       // 8-bit input
    wire [3:0] count_out;    // 4-bit output

    // Instantiate the top module
    top_module uut (
        .data_in(data_in),
        .count_out(count_out)
    );

    initial begin
        // Initialize the dump file and dump variables for waveform generation
        $dumpfile("waveform.vcd");   // Name of the dump file
        $dumpvars(0, testbench);     // Dump all variables in the testbench

        // Monitor the changes in the inputs and outputs
        $monitor("Time = %0d, data_in = %b, count_out = %d", $time, data_in, count_out);
        
        // Test cases
        data_in = 8'b00000000;  // No 1's
        #10;
        
        data_in = 8'b11111111;  // All 1's
        #10;
        
        data_in = 8'b10101010;  // Alternate 1's and 0's
        #10;

        data_in = 8'b11001100;  // Pattern with 4 ones
        #10;

        data_in = 8'b00001111;  // 4 ones in lower nibble
        #10;

        $finish;  // End simulation
    end

endmodule
