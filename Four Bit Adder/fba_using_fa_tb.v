// TESTBENCH

`timescale 1ns/1ps

module fba_using_fa_tb;
  reg [3:0]A,B;
  reg CIN;
  wire [3:0]S;
  wire COUT;
initial begin
  $monitor("simtime = %0t, S = %b, COUT = %b, A = %b, B = %b, CIN = %b",$time,S,COUT,A,B,CIN);
  end
  
fba_using_fa dut(.s(S), .cout(COUT), .a(A), .b(B),.cin(CIN));
  
 initial begin
   
   // TESTCASE 1
   
   A = 4'b0000; B = 4'b0000; CIN = 1'b0; // Expected Output, S = 0000, COUT = 0
   
    // TESTCASE 2
   
   #10 A = 4'b0011; B = 4'b0100; CIN = 1'b0; // Expected Output, S = 0111, COUT = 0
   
    // TESTCASE 3
   
   #10 A = 4'b0000; B = 4'b0000; CIN = 1'b1; // Expected Output, S = 0001, COUT = 0
   
    // TESTCASE 4
   
   #10 A = 4'b0011; B = 4'b0100; CIN = 1'b1; // Expected Output, S = 1000, COUT = 0
   
    // TESTCASE 5
   
   #10 A = 4'b1001; B = 4'b0111; CIN = 1'b0; // Expected Output, S = 0000, COUT = 1
   
    // TESTCASE 6
   
   #10 A = 4'b1001; B = 4'b0111; CIN = 1'b1; // Expected Output, S = 0001, COUT = 1
   
    // TESTCASE 7
   
   #10 A = 4'b1100; B = 4'b1001; CIN = 1'b0; // Expected Output, S = 0101, COUT = 1
   
    // TESTCASE 8
   
   #10 A = 4'b1100; B = 4'b1001; CIN = 1'b1; // Expected Output, S = 0110, COUT = 1
   
   // TESTCASE 9
   
   #10 A = 4'b1111; B = 4'b1111; CIN = 1'b0; // Expected Output, S = 1110, COUT = 1
   
    // TESTCASE 10
   
   #10 A = 4'b1111; B = 4'b1111; CIN = 1'b1; // Expected Output, S = 1111, COUT = 1
   
   
   
   #10 $finish;
   
 end
endmodule
