// TESTBENCH

`timescale 1ns/1ps
module sr_latch_tb;
  reg EN,RST,S,R;
  wire Q,QBAR;
  
  initial begin
    $monitor ("simtime = %0t, EN = %b, RST = %b, S = %b, R = %b, Q = %b, QBAR = %b", $time,EN,RST,S,R,Q,QBAR);
    $dumpfile("sr_latch.vcd");
    $dumpvars(0, sr_latch_tb);
  end
  sr_latch dut(.en(EN), .rst(RST), .s(S), .r(R), .q(Q), .qbar(QBAR));
  
  initial begin
    
  // Test Case 1: Enable = 0 (Outputs should hold their previous value)
    
    EN  = 1'b0; RST = 1'b0; S = 1'b0; R = 1'b0;

    // Test Case 2: Apply Reset
    
   #10 EN  = 1'b1; RST = 1'b1; S = 1'b0; R = 1'b0;

    // Test Case 3: Hold condition
    
   #10 EN = 1'b1; RST = 1'b0; S = 1'b0; R = 1'b0;
    

    // Test Case 4: Set condition
    
    #10 EN = 1'b1; RST = 1'b0; S = 1'b1;R = 1'b0;

    // Test Case 5: Hold after Set
    
   #10 EN = 1'b1; RST = 1'b0; S = 1'b0; R = 1'b0;
    
    // Test Case 6: Reset condition
    
   #10 EN = 1'b1; RST = 1'b0; S = 1'b0; R = 1'b1;

    // Test Case 7: Hold after Reset
    
    #10 EN = 1'b1; RST = 1'b0; S = 1'b0; R = 1'b0;
    
    // Test Case 8: Invalid condition
    
    #10 EN = 1'b1; RST = 1'b0; S   = 1'b1; R   = 1'b1;
    
    // Test Case 9: Disable Enable
    
   #10 EN = 1'b0; RST = 1'b0; S   = 1'b1; R   = 1'b0;

    $finish;
  end

endmodule
