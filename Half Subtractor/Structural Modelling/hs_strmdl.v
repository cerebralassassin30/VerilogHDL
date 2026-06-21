// VERILOG CODE

`timescale 1ns/1ps

module hs_strmdl(d,br,a,b);
input a,b;
output d,br;
wire na;
  
// gate instantiation
  
xor x1(d,a,b); // d = a^b
not n1(na,a); // na = ~a
and a1(br,na,b); // br = (~a)&b
endmodule
