// count_ones.v
module count_ones (
    input [7:0] data_in,    // 8-bit input data
    output reg [3:0] count_out // 4-bit count output
);

    integer i;

    always @(*) begin  //execute everytime the i/p changes and is combinational logic circuit
        count_out = 0;  // Initialize count to 0
        for (i = 0; i < 8; i = i + 1) begin
            if (data_in[i])  // Check if the bit is 1
                count_out = count_out + 1;  // Increment the count
        end
    end

endmodule
