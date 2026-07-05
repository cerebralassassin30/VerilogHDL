// Implementation of 1:2 DEMUX using Dataflow Modelling

// VERILOG CODE

`timescale 1ns/1ps

module demux_1x2_dfmdl(y,en,i,s);
input s,i,en;
output [1:0]y;
  
  assign y[0] = ( en & i & ~s );  
  assign y[1] = ( en & i & s );  
  
endmodule
