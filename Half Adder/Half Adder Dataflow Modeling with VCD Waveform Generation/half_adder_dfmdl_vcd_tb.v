// TESTBENCH

`timescale 1ns/1ps

module half_adder_dfmdl_tb;
reg A,B;
wire S,C;
initial begin 
$monitor( " simtime = %0t, S = %b, C = %b, A = %b, B = %b ", $time,S,C,A,B);
$dumpfile( "half_adder_dfmdl.vcd");
$dumpvars(0, half_adder_dfmdl_tb);

end
half_adder_dfmdl dut (.s(S), .c(C), .a(A), .b(B));

initial begin 

// Testcase 1

A = 1'b0; B = 1'b0;

// Testcase 2

#10 A = 1'b0; B = 1'b1;

// Testcase 3

#10 A = 1'b1; B = 1'b0;

// Testcase 4

#10 A = 1'b1; B = 1'b1;

#10 $finish;

end
endmodule
