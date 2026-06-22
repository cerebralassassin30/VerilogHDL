// TESTBENCH

`timescale 1ns/1ps

module mux_2x1_case_tb;
  reg [1:0]I;
  reg S;
  wire Y;
initial begin
$monitor("simtime = %0t, Y = %b, I = %b, S = %b", $time, Y,I,S);
end
mux_2x1_case dut(.y(Y), .i(I), .s(S));
initial begin
     //TESTCASE 1
      I[1] = 1'b0; I[0] = 1'b1; S= 1'b0; // Expected Output, Y = I[0] = 1'b1
    // TESTCASE 2
  #10 I[1] = 1'b0; I[0] = 1'b1; S= 1'b1; // Expected Output, Y = I[1] = 1'b0
    // TESTCASE 3
  #10 I[1] = 1'b1; I[0] = 1'b0; S= 1'b0; // Expected Output, Y = I[0] = 1'b0
    // TESTCASE 4
  #10 I[1] = 1'b1; I[0] = 1'b0; S= 1'b1; // Expected Output, Y = I[1] = 1'b1
  
  #10 $finish;
end
endmodule
  
