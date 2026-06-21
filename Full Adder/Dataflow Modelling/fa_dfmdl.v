// VERILOG CODE

`timescale 1ns/1ps
module fa_dfmdl(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
assign s = a ^ b^ cin;
assign cout = ((a ^ b) & cin) | (a & b);
endmodule
