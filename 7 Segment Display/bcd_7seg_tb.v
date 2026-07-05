// TESTBENCH

`timescale 1ns/1ps

module bcd_7seg_tb;
  reg [3:0] BCD;
  wire [6:0] SEG;
  initial begin
    $monitor("simtime = %0t, BCD = %b, SEG = %b", $time, BCD, SEG);
  end
  bcd_7seg dut(.bcd(BCD), .seg(SEG));
  
  initial begin
    
    // TESTCASE 1 
    
    BCD = 4'b0000;
    
    // TESTCASE 2
    
    #10  BCD = 4'b0001;
    
    // TESTCASE 3
    
    #10  BCD = 4'b0010;
    
    // TESTCASE 4
    
    #10  BCD = 4'b0011;
    
    // TESTCASE 5
    
    #10  BCD = 4'b0100;
    
    // TESTCASE 6
    
    #10  BCD = 4'b0101;
    
    // TESTCASE 7
    
    #10  BCD = 4'b0110;
    
    // TESTCASE 8
    
    #10  BCD = 4'b0111;
    
    // TESTCASE 9
    
    #10  BCD = 4'b1000;
    
    // TESTCASE 10
    
    #10  BCD = 4'b1001;
    
    // TESTCASE 11
    
    #10  BCD = 4'b1011;
    
    // TESTCASE 12
    
    #10  BCD = 4'b1111;
    
    
    #10 $finish;
    
  end
endmodule
