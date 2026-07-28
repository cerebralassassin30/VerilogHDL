// Testbench

`timescale 1ns / 1ps
module jk_ff_tb;

  reg CLK, RST, J, K;
  wire Q, QBAR;

  // CLOCK INITIALIZATION

initial begin
    CLK = 1'b0;
end

initial begin
  $monitor("simtime = %0t, CLK = %b, RST = %b, J = %b, K = %b, Q = %b, QBAR = %b",$time, CLK, RST, J, K, Q, QBAR);
    $dumpfile("jk_ff.vcd");
    $dumpvars(0,jk_ff_tb);
    end

    // CLOCK GENERATION

    always #5 CLK = ~CLK; // toggle clock every 5 time units

    //DUT INSTANTIATION

  jk_ff dut(.q(Q),.qbar(QBAR),.clk(CLK),.rst(RST),.j(J),.k(K));

  initial begin

    // TESTCASE 1

    RST = 1'b1; J = 1'b0; K = 1'b0; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 2

    #10 RST = 1'b0; J = 1'b0; K = 1'b0; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 3

    #10 RST = 1'b0; J = 1'b0; K = 1'b1; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 4

    #10 RST = 1'b0; J = 1'b1; K = 1'b0; // Expected Output: Q = 1, QBAR = 0

    // TESTCASE 5

    #10 RST = 1'b0; J = 1'b1; K = 1'b1; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 6

    #10 RST = 1'b1; J = 1'b1; K = 1'b1; // Expected Output: Q = 0, QBAR = 1

    // TESTCASE 7

    #10 RST = 1'b0; J = 1'b1; K = 1'b0; // Expected Output: Q = 1, QBAR = 0

    #10 $finish;

  end

endmodule
