// TESTBENCH

`timescale 1ns/1ps

module sxba_using_fba_tb;
  reg [15:0]A,B;
  reg CIN;
  wire [15:0]S;
  wire COUT;
  
initial begin

$monitor("simtime = %0t, A = %b, B = %b, CIN = %b, S = %b, COUT = %b", $time,A,B,CIN,S,COUT);
  
end

sxba_using_fba dut (.a(A),.b(B), .cin(CIN), .s(S), .cout(COUT));

initial begin
  
  //TESTCASE 1 
  
 A = 16'h0000; B = 16'h0000; CIN = 1'b0;
  
  //TESTCASE 2
  
#10 A = 16'h001F; B = 16'h000C; CIN = 1'b0;
  
  //TESTCASE 3
  
#10 A = 16'h001F; B = 16'h018C; CIN = 1'b1;
  
  //TESTCASE 4
  
#10 A = 16'hFFFF; B = 16'h0000; CIN = 1'b1;
  
  //TESTCASE 5
  
  #10 A = 16'hFFFF; B = 16'hFFFF; CIN = 1'b0;
    
  //TESTCASE 6
  
  #10 A = 16'h0FFF; B = 16'h0001; CIN = 1'b0;
  
  //TESTCASE 7
  
  #10 A = 16'h1234; B = 16'h5678; CIN = 1'b1;
  
#10 $finish;
end

endmodule
