// VERILOG CODE

`timescale 1ns/1ps
module fa_bhmdl(s,cout,a,b,cin);
input a,b,cin;
output reg s,cout;
always @(*) begin
s = a ^ b^ cin;
cout = ((a ^ b) & cin) | (a & b);
end
endmodule

// TESTBENCH

`timescale 1ns/1ps
module fa_bhmdl_tb;
  reg A,B,CIN;
  wire S,COUT;
  initial begin
    $monitor("simtime = %0t, S = %b, COUT = %b, A = %b, B = %b, CIN = %b", $time,S,COUT,A,B,CIN);
  end
  fa_bhmdl dut(.s(S), .cout(COUT), .a(A), .b(B), .cin(CIN));
  initial begin
    //testcase 1
    A = 1'b0; B = 1'b0; CIN = 1'b0;
    // testcase 2
    #10 A = 1'b0; B = 1'b0; CIN = 1'b1;
    // testcase 3
    #10 A = 1'b0; B = 1'b1; CIN = 1'b0;
    // testcase 4
    #10 A = 1'b0; B = 1'b1; CIN = 1'b1;
    //testcase 5
    #10 A = 1'b1; B = 1'b0; CIN = 1'b0;
    // testcase 6
    #10 A = 1'b1; B = 1'b0; CIN = 1'b1;
    // testcase 7
    #10 A = 1'b1; B = 1'b1; CIN = 1'b0;
    // testcase 8
    #10 A = 1'b1; B = 1'b1; CIN = 1'b1;
    
    #10 $finish;
  end
endmodule
    
