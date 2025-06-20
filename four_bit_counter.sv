module four_bit_counter (
    input logic clk,
    input logic reset,
    output logic [3:0] count
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;
        else if (count < 4'b1111)
            count <= count + 1;
        else
            count <= count; // Hold value at 15
    end

endmodule
