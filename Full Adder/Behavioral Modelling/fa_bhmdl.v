// VERILOG CODE

`timescale 1ns/1ps
module fa_bhmdl(s,cout,a,b,cin);
input a,b,cin;
output reg s,cout;
always @(*) begin
s = a ^ b^ cin;
cout = ((a ^ b) & cin) | (a & b);
end
endmodule
