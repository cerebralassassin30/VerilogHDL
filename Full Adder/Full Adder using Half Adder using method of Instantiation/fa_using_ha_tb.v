// TESTBENCH

`timescale 1ns/1ps

module fa_dfmdl_tb;
reg A,B,CIN;
wire S,COUT;
initial begin
  $monitor("simtime = %0t, S = %b, COUT = %b, A = %b, B = %b, CIN = %b",$time, S,COUT,A,B,CIN);
  end
  
fa_dfmdl dut(.s(S), .cout(COUT), .a(A), .b(B),.cin(CIN));
  
 initial begin
   
   // TESTCASE 1
   
   A = 1'b0; B = 1'b0; CIN = 1'b0; // Expected Output, S = 0, COUT = 0
   
    // TESTCASE 2
   
   #10 A = 1'b0; B = 1'b0; CIN = 1'b1; // Expected Output, S = 1, COUT = 0
   
    // TESTCASE 3
   
   #10 A = 1'b0; B = 1'b1; CIN = 1'b0; // Expected Output, S = 1, COUT = 0
   
    // TESTCASE 4
   
   #10 A = 1'b0; B = 1'b1; CIN = 1'b1; // Expected Output, S = 0, COUT = 1
   
    // TESTCASE 5
   
   #10 A = 1'b1; B = 1'b0; CIN = 1'b0; // Expected Output, S = 1, COUT = 0
   
    // TESTCASE 6
   
   #10 A = 1'b1; B = 1'b0; CIN = 1'b1; // Expected Output, S = 0, COUT = 1
   
    // TESTCASE 7
   
   #10 A = 1'b1; B = 1'b1; CIN = 1'b0; // Expected Output, S = 0, COUT = 1
   
    // TESTCASE 8
   
   #10 A = 1'b1; B = 1'b1; CIN = 1'b1; // Expected Output, S = 1, COUT = 1
   
   #10 $finish;
   
 end
endmodule
