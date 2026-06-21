// VERILOG CODE

`timescale 1ns/1ps

module fs_bhmdl(d,bro,a,b,brin);
input a,b,brin;
output reg d,bro;
always@(*) begin
d = a ^ b ^ brin;
  bro =((~a) & brin)|(b & brin)|((~a) & (b));
end
endmodule
