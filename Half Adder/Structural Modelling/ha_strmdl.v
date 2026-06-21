// VERILOG CODE

`timescale 1ns / 1ps
// Implementation of Half Adder through Structural Modelling Technique
module ha_strmdl(s,c,a,b);
input a,b ;
output s,c;

// Gate Instantiation 

xor x1(s,a,b); // sum = (a^b)
and a1(c,a,b); // carry = (a&b)
endmodule
