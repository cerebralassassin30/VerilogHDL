//Implementation of 4:1 MUX using dataflow modelling technique using conditional operators

// VERILOG CODE

`timescale 1ns / 1ps

module mux_4x1_cond_op(y,s,i);
  input [3:0]i;
input [1:0]s;
output y;
// dataflow statements

  assign y = (s[1])?(s[0]?i[3]:i[2])
    :(s[0]?i[1]:i[0]);

// The above conditional statement means if s[1] is {true or 1}, then if s[0] is {true or 1} then y = i[3] otherwise if s[0] is {false or 0} y = i[2] 
  //otherwise if s[1] is {false or 0}, then if s[0] is true or 1 then y = i[1] otherwise if s[0] is {false or 0} then y = i[0]
endmodule
