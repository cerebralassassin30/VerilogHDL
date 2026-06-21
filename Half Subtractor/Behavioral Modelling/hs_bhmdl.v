// VERILOG CODE

`timescale 1ns/1ps

module hs_bhmdl(d,br,a,b);
input a,b;
output reg d,br;
always@(*) begin
d = a ^ b;
br = (~a) & b;
end
endmodule
