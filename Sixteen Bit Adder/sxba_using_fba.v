
`timescale 1ns/1ps

// IMPLEMENTATION OF 16-BIT ADDER USING 4-BIT ADDERS


// VERILOG CODE


//PARENT MODULE
module sxba_using_fba(s,cout,a,b,cin);
  input [15:0]a,b;
  input cin;
  output [15:0]s;
  output cout;
  wire [2:0]c;
  
  fba_using_fa fba0(s[3:0],c[0], a[3:0],b[3:0],cin);
  fba_using_fa fba1(s[7:4],c[1], a[7:4],b[7:4],c[0]);
  fba_using_fa fba2(s[11:8],c[2], a[11:8],b[11:8],c[1]);
  fba_using_fa fba3(s[15:12],cout, a[15:12],b[15:12],c[2]);
endmodule

//CHAIN MODULE 2
module fba_using_fa(s,cout,a,b,cin);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output cout;
  wire [2:0]c;
  
  fa_bhmdl fa0(s[0],c[0], a[0],b[0],cin);
  fa_bhmdl fa1(s[1],c[1], a[1],b[1],c[0]);
  fa_bhmdl fa2(s[2],c[2], a[2],b[2],c[1]);
  fa_bhmdl fa3(s[3],cout, a[3],b[3],c[2]);
endmodule

// CHAIN MODULE 1

module fa_bhmdl(s,cout,a,b,cin);
input a,b,cin;
output reg s,cout;
  always@(*) begin
    s = a^b^cin;
    cout = ((a^b)&cin | (a&b));
  end
endmodule
