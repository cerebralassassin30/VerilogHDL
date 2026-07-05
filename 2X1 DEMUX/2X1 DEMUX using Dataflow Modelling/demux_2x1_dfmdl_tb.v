// TESTBENCH

`timescale 1ns/1ps

module demux_2x1_dfmdl_tb;
  reg EN,I,S;
  wire [1:0] Y;
  initial begin
    $monitor("simtime = %0t, Y = %b, EN = %b, I = %b, S = %b", $time, Y,EN,I,S );
  end
  demux_2x1_dfmdl dut(.y(Y), .en(EN), .i(I), .s(S));
  

// EN = 0 → DEMUX is disabled → both outputs are 0.
// EN = 1 and I = 0 → There is no data to route → both outputs are 0.
// EN = 1 and I = 1 → The select line S decides which output gets the 1.
  
  initial begin
    
    // TESTCASE 1 
    
     EN = 1'b0; I = 1'b0; S = 1'b0; // as the enable input is 0, it means that the DEMUX is disabled; therefore, the input data (I) and select line (S) are ignored. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 2
    
    #10   EN = 1'b0; I = 1'b0; S = 1'b1; // as the enable input is 0, it means that the DEMUX is disabled; therefore, the input data (I) and select line (S) are ignored. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 3
    
    #10   EN = 1'b0; I = 1'b1; S = 1'b0; // as the enable input is 0, it means that the DEMUX is disabled; therefore, the input data (I) and select line (S) are ignored. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 4
    
    #10  EN = 1'b0; I = 1'b1; S = 1'b1; // as the enable input is 0, it means that the DEMUX is disabled; therefore, the input data (I) and select line (S) are ignored. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 5
    
    #10  EN = 1'b1; I = 1'b0; S = 1'b0; // as the enable input is 1, it means that the DEMUX is enabled, but the input data is 0. Therefore, the selected output also receives 0. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 6
    
    #10   EN = 1'b1; I = 1'b0; S = 1'b1;// as the enable input is 1, it means that the DEMUX is enabled, but the input data is 0. Therefore, the selected output also receives 0. Hence, EXPECTED OUTPUT Y = 2'b00
    
    // TESTCASE 7
    
    #10   EN = 1'b1; I = 1'b1; S = 1'b0; // As the enable input is 1, the DEMUX is enabled, and the input data (I) is 1. Therefore, the routing of the input data depends on the select line. Since S = 0, the input data is routed to output Y[0]. Hence, EXPECTED OUTPUT Y = 2'b01.
    
    // TESTCASE 8
    
    #10  EN = 1'b1; I = 1'b1; S = 1'b1; // As the enable input is 1, the DEMUX is enabled, and the input data (I) is 1. Therefore, the routing of the input data depends on the select line. Since S = 1, the input data is routed to output Y[1]. Hence, EXPECTED OUTPUT Y = 2'b10.
    
    #10 $finish;
    
  end
endmodule
