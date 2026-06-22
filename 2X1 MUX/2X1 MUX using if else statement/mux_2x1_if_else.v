//VERILOG CODE

`timescale 1ns/1ps

module mux_2x1_if_else(y,s,i);
input [1:0]i;
input s;
output reg y;
always @(*)
begin
if (s)
y = i[1];
else
y =i[0];
end
endmodule
