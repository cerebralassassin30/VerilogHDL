//VERILOG CODE

`timescale 1ns/1ps

module mux_2x1_if_else(y,s,i);
input [1:0]i;
input s;
output reg y;
always @(*)
begin
  if (s) // if s = 1'b1
y = i[1];
else // if s = 1'b0
y =i[0];
end
endmodule
