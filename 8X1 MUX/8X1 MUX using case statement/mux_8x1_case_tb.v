// TESTBENCH

`timescale 1ns/1ps

module mux_8x1_case_tb;
  reg [7:0]I;
  reg [2:0]S;
  wire Y;
initial begin
$monitor("simtime = %0t, Y = %b, I = %b, S = %b", $time, Y,I,S);
end
mux_8x1_case dut(.y(Y), .i(I), .s(S));
initial begin
     //TESTCASE 1
  I = 8'b00000000; S= 3'b000; // Expected Output, Y = I[0] = 1'b0
    // TESTCASE 2
  #10 I = 8'b00000010; S= 3'b001; // Expected Output, Y = I[1] = 1'b1
    // TESTCASE 3
  #10 I = 8'b00000101; S= 3'b010; // Expected Output, Y = I[2] = 1'b1
    // TESTCASE 4
  #10 I = 8'b00000111; S= 3'b011; // Expected Output, Y = I[3] = 1'b0
    //TESTCASE 5
  #10 I = 8'b00011000; S= 3'b100; // Expected Output, Y = I[4] = 1'b1
    // TESTCASE 6
  #10 I = 8'b11001010; S= 3'b101; // Expected Output, Y = I[5] = 1'b0
    // TESTCASE 7
  #10 I = 8'b11100101; S= 3'b110; // Expected Output, Y = I[6] = 1'b1
    // TESTCASE 8
  #10 I = 8'b01100111; S= 3'b111; // Expected Output, Y = I[7] = 1'b0
  
  
  #10 $finish;
end
endmodule
