//TESTBENCH

`timescale 1ns/1ps

module mux_8x1_using_2x1_tb;
  reg [7:0]I;
  reg [2:0]S;
  wire Y;
  
  initial begin
    $monitor("simtime = %0t, Y = %b, S = %b, I = %b", $time, Y,S,I);
  end
  
  mux_8x1_using_2x1 dut(.y(Y), .s(S), .i(I));
  
  initial begin
    
  //TESTCASE 1
    
    I = 8'h08; S = 3'b000; // Expected Output Y = I[0] = 1'b0
        
  //TESTCASE 2
    
   #10 I = 8'h67; S = 3'b001; // Expected Output Y = I[1] = 1'b1
    
        
  //TESTCASE 3
    
    #10 I = 8'h41; S = 3'b010; // Expected Output Y = I[2] = 1'b0
    
        
  //TESTCASE 4
    
    #10 I = 8'h5A; S = 3'b011; // Expected Output Y = I[3] = 1'b1
    
    
  //TESTCASE 5
    
    #10 I = 8'hCD; S = 3'b100; // Expected Output Y = I[4] = 1'b0
    
        
  //TESTCASE 6
    
    #10 I = 8'h6E; S = 3'b101; // Expected Output Y = I[5] = 1'b1
    
        
  //TESTCASE 7
    
    #10 I = 8'h4F; S = 3'b110; // Expected Output Y = I[6] = 1'b1
    
      
  //TESTCASE 8
    
    #10 I = 8'hC2; S = 3'b111; // Expected Output Y = I[7] = 1'b1
    
    #10 $finish;
    
  end
endmodule
