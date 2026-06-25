`timescale 1ns/1ps

// Implementation of 4 bit Adder using 4 Full Adders using the concept of instantiation

// VERILOG CODE

//PARENT MODULE
module fba_using_fa(s,cout,a,b,cin);
  input [3:0] a,b;
  input cin;
  output [3:0] s;
  output cout;
  wire [2:0]c;
  
  fa_bhmdl fa0(s[0],c[0], a[0], b[0],cin);
  fa_bhmdl fa1(s[1],c[1], a[1], b[1],c[0]);
  fa_bhmdl fa2(s[2],c[2], a[2], b[2],c[1]);
  fa_bhmdl fa3(s[3],cout, a[3], b[3],c[2]);
endmodule

// CHAIN MODULE

module fa_bhmdl(s,cout,a,b,cin);
input a,b,cin;
output reg s,cout;
always @(*) begin
s = a^b^cin;
  cout = ((a^b)&cin |(a&b));
end
endmodule
