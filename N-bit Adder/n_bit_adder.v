// IMPLEMENTATION OF N-BIT ADDER

`timescale 1ns/1ps

//PARENT MODULE

module n_bit_adder#(parameter N = 64)(s,cout,a,b,cin);
  input [N-1:0]a,b;
  input cin;
  output [N-1:0]s;
  output cout;
  wire [N:0]c;
  genvar i; // Used by the generate-for loop to create one full adder for each bit.
  
  assign c[0] = cin;
  generate
    for(i = 0;i<N; i=i+1) 
      begin:adder_chain one_bit_full_adder fa (
        .a(a[i]),
        .b(b[i]),
        .cin(c[i]), //.cin(c[i]) → the carry coming into the current full adder.
        .s(s[i]),
        .cout(c[i+1]) // Output carry of the current full adder.
               // This becomes the input carry (c[i+1]) of the next full adder.
      );
      end
  endgenerate 
  
  assign cout = c[N];
endmodule
  
  
  // CHAIN MODULE
  
  module one_bit_full_adder(s,cout,a,b,cin);
    input a,b,cin;
    output s,cout;
    assign s = a^b^cin;
    assign cout = ((a^b)&cin | (a&b));
  endmodule
