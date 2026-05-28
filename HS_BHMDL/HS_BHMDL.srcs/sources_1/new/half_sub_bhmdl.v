`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 21:35:13
// Design Name: 
// Module Name: half_sub_bhmdl
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


module half_sub_bhmdl(d,br,a,b);
 input a,b;
  output d, br;
  reg d,br;
  always @(*)
    begin
      d = a^b;
      br = (~a)&(b);
    end
 endmodule
