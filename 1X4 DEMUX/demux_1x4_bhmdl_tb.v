// TESTBENCH

`timescale 1ns/1ps

module demux_1x4_tb;
  reg EN, D;
  reg [1:0]S;
  wire [3:0]Y;
  initial begin
    $monitor("simtime = %0t, EN = %b,D = %b, S = %b, Y = %h", $time,EN,D,S,Y);
    $dumpfile("demux_1x4.vcd");
    $dumpvars(0,demux_1x4_tb);
  end
  demux_1x4 dut(.en(EN), .d(D), .s(S), .y(Y));
  initial begin
    // testcase 1
    
   EN = 1'b0; D = 1'b1; S = 2'b01; // EXP. OUTPUT, Y = 4'h0
    
    //testcase 2
    
    #10 EN = 1'b0; D = 1'b1; S = 2'b11;// EXP. OUTPUT, Y = 4'h0
     
    //testcase 3
    
    #10 EN = 1'b1; D = 1'b1; S = 2'b10;// EXP. OUTPUT, Y = 4'h4
     
    //testcase 4
    
    #10 EN = 1'b1; D = 1'b1; S = 2'b00;// EXP. OUTPUT, Y = 4'h1
    
    // testcase 5
    
    #10 EN = 1'b1; D = 1'b0; S = 2'b01;// EXP. OUTPUT, Y = 4'h0
    
    // testcase 6
    
    #10 EN = 1'b1; D = 1'b1; S = 2'b11;// EXP. OUTPUT, Y = 4'h8
    
    // testcase 7

    #10 EN = 1'b1; D = 1'b1; S = 2'b01; // EXP. OUTPUT, Y = 4'h2
    
    
    #10 $finish;
  end
endmodule
    
