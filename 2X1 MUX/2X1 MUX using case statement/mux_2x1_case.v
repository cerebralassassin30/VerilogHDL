//VERILOG CODE

`timescale 1ns/1ps

module mux_2x1_case(y,s,i);
input [1:0]i;
input s;
output reg y;
always @(*) begin 
case(s)
  1'b0: y = i[0];
  1'b1: y = i[1];
  default: y = 1'b0;
endcase
end
endmodule
