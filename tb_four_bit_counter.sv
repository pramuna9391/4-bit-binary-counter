module tb_four_bit_counter;

    logic clk, reset;
    logic [3:0] count;

    // Instantiate the counter
    four_bit_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $display("Time\tReset\tCount");
        $monitor("%0t\t%b\t%b", $time, reset, count);

        // Initialize
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Let it run for a few cycles
        #200 $finish;
    end

endmodule
