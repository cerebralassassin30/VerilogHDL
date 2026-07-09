// TESTBENCH

`timescale 1ns/1ps

module n_bit_adder_tb;

parameter N = 64;
  reg [N-1:0]A,B;
  reg CIN;
  wire [N-1:0]S;
  wire COUT;
  initial begin
    $monitor("simtime = %0t, S= %h, COUT = %b, A = %h, B = %h, CIN = %b", $time,S,COUT,A,B,CIN);
    $dumpfile("n_bit_adder.vcd");
    $dumpvars(0,n_bit_adder_tb);
  end
 n_bit_adder #(N) dut(.s(S), .cout(COUT), .a(A), .b(B), .cin(CIN));

  initial begin

  // TESTCASES 
  
  //TESTCASE 1
  
  A = 64'h0000_0000_0000_0000; B = 64'h0000_0000_0000_0000; CIN = 1'b0;
  
  //TESTCASE 2
  
  #10 A = 64'h0000_0000_0073_0018; B = 64'h0000_00D4_0087_1184; CIN = 1'b1;
  
  //TESTCASE 3
  
  #10 A = 64'h4C27_3482_1187_4D13; B = 64'hA5B7_FFDA_1568_2242; CIN = 1'b1;
    
  //TESTCASE 4
  
  #10 A = 64'h315E_3198_DC56_64A1; B = 64'hD8B1_B6FD_0056_158C; CIN = 1'b0;
  
  //TESTCASE 5
  
  #10 A = 64'hFFFF_CCB4_A35F_00AC; B = 64'h0000_0000_FFFF_2138; CIN = 1'b0;
    
  //TESTCASE 6
  
 #10 A = 64'hA250_D289_1598_FFFF; B = 64'hA2B9_FFD2_BA76_CA59; CIN = 1'b1;
    
  //TESTCASE 7
  
  #10 A = 64'hFFFF_FFFF_FFFF_FFFF; B = 64'hFFFF_FFFF_FFFF_FFFF; CIN = 1'b1;
    
  //TESTCASE 8
  
  #10 A = 64'hFFFF_FFFF_FFFF_FFFF; B = 64'h0000_0000_0000_0001; CIN = 1'b0;
  
  #10 $finish;

  end
 endmodule
