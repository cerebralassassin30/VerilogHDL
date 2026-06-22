// TESTBENCH

`timescale 1ns/1ps

module mux_4x1_case_tb;
  reg [3:0]I;
  reg [1:0]S;
  wire Y;
initial begin
$monitor("simtime = %0t, Y = %b, I = %b, S = %b", $time, Y,I,S);
end
mux_4x1_case dut(.y(Y), .i(I), .s(S));
initial begin
     //TESTCASE 1
  I = 4'b0000; S= 2'b00; // Expected Output, Y = I[0] = 1'b0
    // TESTCASE 2
  #10 I = 4'b0010; S= 2'b01; // Expected Output, Y = I[1] = 1'b1
    // TESTCASE 3
  #10 I = 4'b0101; S= 2'b10; // Expected Output, Y = I[2] = 1'b1
    // TESTCASE 4
  #10 I = 4'b0111; S= 2'b11; // Expected Output, Y = I[3] = 1'b0
  
  #10 $finish;
end
endmodule
  
