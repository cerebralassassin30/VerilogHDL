`timescale 1ns/1ps

// Implementation of Full ADDER USING Half Adder using the concept of instantiation

// VERILOG CODE

// PARENT MODULE
module fa_dfmdl(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  wire w1,w2,w3;
  ha_dfmdl ha1(w1,w2,a,b);
  ha_dfmdl ha2(s,w3,w1,cin);
  or(cout,w2,w3);
endmodule




// CHAIN MODULE
module ha_dfmdl(s,c,a,b);
  input a,b;
  output s,c;
  assign s = a^b;
  assign c = a&b;
endmodule
