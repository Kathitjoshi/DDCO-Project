// top_module.v
module top_module (
    input [7:0] data_in,    // 8-bit input data
    output [3:0] count_out  // 4-bit output count (max is 8, so 4 bits are enough)
);

    // Wire to hold the result from the function
    wire [3:0] count;
    
    // Instantiate the lib file (count_ones) to count the number of 1's
    count_ones count_ones_inst (
        .data_in(data_in),
        .count_out(count)
    );

    // Assign the output to the wire result
    assign count_out = count;

endmodule
