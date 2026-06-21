// VERILOG CODE

`timescale 1ns/1ps

module hs_dfmdl(d,br,a,b);
input a,b;
output d,br;
assign d = a ^ b;
assign br = (~a) & b;
endmodule
