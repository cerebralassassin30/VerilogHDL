// Testbench

`timescale 1ns / 1ps

module sr_ff_tb;

  reg CLK, RST, S, R;
  wire Q, QBAR;

  // CLOCK INITIALIZATION

initial begin
    CLK = 1'b0;
end

initial begin
  $monitor("simtime = %0t, CLK = %b, RST = %b, S = %b, R = %b, Q = %b, QBAR = %b",$time, CLK, RST, S, R, Q, QBAR);
    $dumpfile("sr_ff.vcd");
    $dumpvars(0,sr_ff_tb);
    end

    // CLOCK GENERATION

    always #5 CLK = ~CLK; // toggle clock every 5 time units

    //DUT INSTANTIATION

  sr_ff dut(.q(Q),.qbar(QBAR),.clk(CLK),.rst(RST),.s(S),.r(R));

  initial begin

    // TESTCASE 1

    RST = 1'b1; S = 1'b0; R = 1'b0; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 2

    #10 RST = 1'b0; S = 1'b0; R = 1'b0; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 3

    #10 RST = 1'b0; S = 1'b0; R = 1'b1; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 4

    #10 RST = 1'b0; S = 1'b1; R = 1'b0; // Expected Output: Q = 1, QBAR = 0

    // TESTCASE 5

    #10 RST = 1'b0; S = 1'b1; R = 1'b1; // Expected Output: Q = x, QBAR = x

    // TESTCASE 6

    #10 RST = 1'b1; S = 1'b1; R = 1'b1; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 7

    #10 RST = 1'b0; S = 1'b1; R = 1'b0; // Expected Output: Q = 1, QBAR = 0

    #10 $finish;

  end

endmodule
