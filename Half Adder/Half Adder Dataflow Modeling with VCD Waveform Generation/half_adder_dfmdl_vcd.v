//VERILOG CODE

`timescale 1ns/1ps

module half_adder_dfmdl( s,c,a,b);
input a,b;
output s,c;
assign s = a ^ b;
assign c = a & b;
endmodule
