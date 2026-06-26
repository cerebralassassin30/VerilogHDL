//Implementation of 2:1 MUX using dataflow modelling technique using conditional operators

// VERILOG CODE

`timescale 1ns / 1ps

module mux_2x1_cond_op(y,s,i);
  input [1:0]i;
input s;
output y;
// dataflow statements

  assign y = s ? i[1] : i[0];

  // The above conditional statement means if s is {true or 1}, then y = i[1] and else y = i[0]
endmodule
