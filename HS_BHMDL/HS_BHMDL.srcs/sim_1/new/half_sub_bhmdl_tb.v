`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 21:38:58
// Design Name: 
// Module Name: half_sub_bhmdl_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module half_sub_bhmdl_tb;
 reg A,B;
  wire D,BR;
  
  initial 
    begin
      $monitor("simtime = %t, A= %b,B= %b,D= %b,BR= %b",$time,A,B,D,BR);
    end
  half_sub_bhmdl dut(.a(A), .b(B), .d(D), .br(BR));
    initial
      begin
        A = 1'b0; B = 1'b0;
        #10  A = 1'b0; B = 1'b1;
        #10  A = 1'b1; B = 1'b0;
        #10  A = 1'b1; B = 1'b1;
        #10 $finish;
      end
  endmodule
