// TESTBENCH 

`timescale 1ns / 1ps

module mux_2x1_cond_op_tb;
  reg [1:0]I;
  reg S;
  wire Y;
  initial begin
    $monitor("simtime = %0t, Y = %b, S = %b, I = %b", $time, Y,S,I);
  end
  mux_2x1_cond_op dut(.y(Y), .s(S), .i(I));
  
  initial begin
    
    //TESTCASE 1
    
    I= 2'b01; S = 1'b0; // Expected Output Y = I[0] = 1'b1
    
    // TESTCASE 2
    
    #10   I= 2'b11; S = 1'b1; // Expected Output Y = I[1] = 1'b1
    
     // TESTCASE 3
    
    #10   I= 2'b10; S = 1'b0; // Expected Output Y = I[0] = 1'b0
    
     // TESTCASE 4
    
    #10   I= 2'b00; S = 1'b1; // Expected Output Y = I[1] = 1'b0
    
    #10 $finish;
    
  end
endmodule
    

