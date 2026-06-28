// Implementation of 8X1 MUX using 2X1 MUX through concept of instantiation

//VERILOG CODE

`timescale 1ns/1ps

// PARENT MODULE

module mux_8x1_using_2x1(y,s,i);
  input [7:0]i;
  input [2:0]s;
  output y;
  wire [5:0]w;
  
  mux_2x1_dfmdl m1(w[0], s[0], i[1:0]);
  mux_2x1_dfmdl m2(w[1], s[0], i[3:2]);
  mux_2x1_dfmdl m3(w[2], s[0], i[5:4]);
  mux_2x1_dfmdl m4(w[3], s[0], i[7:6]);
  mux_2x1_dfmdl m5(w[4], s[1], w[1:0]);
  mux_2x1_dfmdl m6(w[5], s[1], w[3:2]);
  mux_2x1_dfmdl m7(y, s[2], w[5:4]);
  endmodule
  
  
  // CHAIN MODULE
  
  module mux_2x1_dfmdl(y,s,i);
    input [1:0]i;
    input s;
    output y;
    assign y = s ? i[1]:i[0]; // if s = 1'b1, y = i[1] else y = i[0]
    endmodule
