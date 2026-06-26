//Implementation of 8:1 MUX using dataflow modelling technique using conditional operators

// VERILOG CODE

`timescale 1ns / 1ps

module mux_8x1_cond_op(y,s,i);
  input [7:0]i;
  input [2:0]s;
output y;
// dataflow statements

  assign y = s[2] ? ( s[1] ? ( s[0] ? i[7] : i[6] ):( s[0] ? i[5]: i[4])
                     : (s[1] ? (s[0] ? i[3] : i[2]) : (s[0] ? i[1] : i[0]));
  endmodule                     
