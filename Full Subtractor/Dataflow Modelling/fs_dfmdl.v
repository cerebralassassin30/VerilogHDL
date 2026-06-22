// VERILOG CODE

`timescale 1ns/1ps

module fs_dfmdl(d,bro,a,b,brin);
input a,b,brin;
output d,bro;
 assign d = a ^ b ^ brin;
 assign  bro =((~a) & brin)|(b & brin)|((~a) & (b));
endmodule
