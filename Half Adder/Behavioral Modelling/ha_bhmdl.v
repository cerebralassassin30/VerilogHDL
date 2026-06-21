//VERILOG CODE

`timescale 1ns/1ps
module ha_bhmdl(s,c,a,b);
input a,b;
output reg s,c;
always @(*) begin
s = a ^ b;
c = a & b;
end
endmodule
