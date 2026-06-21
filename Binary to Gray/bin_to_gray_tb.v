// TESTBENCH

`timescale 1ns / 1ps

module binary_to_gray_tb;
reg [2:0]B;
wire [2:0]G;
initial begin
$monitor( "simtime = %g, B = %b, G = %b", $time, B,G);
end

binary_to_gray dut(.b(B),.g(G));
initial begin

// TESTCASE 1

B[2] = 1'b0; B[1] = 1'b0; B[0] = 1'b0;

// EXPECTED RESULT G2G1G0 = 000;

// TESTCASE 2

#10 B[2] = 1'b0; B[1] = 1'b0; B[0] = 1'b1;

// EXPECTED RESULT G2G1G0 = 001;

// TESTCASE 3

#10 B[2] = 1'b0; B[1] = 1'b1; B[0] = 1'b0;

// EXPECTED RESULT G2G1G0 = 011;

// TESTCASE 4

#10 B[2] = 1'b0; B[1] = 1'b1; B[0] = 1'b1;

// EXPECTED RESULT G2G1G0 = 010;

// TESTCASE 5

#10 B[2] = 1'b1; B[1] = 1'b0; B[0] = 1'b0;

// EXPECTED RESULT G2G1G0 = 110;

// TESTCASE 6

#10 B[2] = 1'b1; B[1] = 1'b0; B[0] = 1'b1;

// EXPECTED RESULT G2G1G0 = 111;

// TESTCASE 7

#10 B[2] = 1'b1; B[1] = 1'b1; B[0] = 1'b0;

// EXPECTED RESULT G2G1G0 = 101;

// TESTCASE 8

#10 B[2] = 1'b1; B[1] = 1'b1; B[0] = 1'b1;

// EXPECTED RESULT G2G1G0 = 100;

#10 $finish;
end
endmodule
