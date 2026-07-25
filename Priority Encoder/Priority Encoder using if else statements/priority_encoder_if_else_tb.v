// TESTBENCH

`timescale 1ns/1ps

module priority_encoder_4x2_tb;
  reg EN;
  reg [3:0]I;
  wire [1:0]Y;
       initial begin
         $monitor("simtime = %0t, EN = %b, I = %b, Y = %b", $time, EN,I,Y);
         $dumpfile("priority_encoder_4x2.vcd");
         $dumpvars(0,priority_encoder_4x2_tb);
       end
       priority_encoder_4x2 dut(.en(EN), .i(I), .y(Y));
       
       initial begin
         
         // TESTCASE 1
         
         EN = 1'b0; I = 4'b0000; // Expected Output, Y = 2'b00
         
         // TESTCASE 2
         
        #10 EN = 1'b0; I = 4'b1000; // Expected Output, Y = 2'b00
         
          // TESTCASE 3
         
        #10 EN = 1'b1; I = 4'b0000; // Expected Output, Y = 2'b00
         
          // TESTCASE 4
         
        #10 EN = 1'b1; I = 4'b0001; // Expected Output, Y = 2'b00
         
          // TESTCASE 5
         
        #10 EN = 1'b1; I = 4'b0010; // Expected Output, Y = 2'b01
         
          // TESTCASE 6
         
        #10 EN = 1'b1; I = 4'b0100; // Expected Output, Y = 2'b10
         
          // TESTCASE 7
         
        #10 EN = 1'b1; I = 4'b1000; // Expected Output, Y = 2'b11
         
         // TESTCASE 8
         
        #10 EN = 1'b1; I = 4'b0011; // Expected Output: Y = 2'b01 (i[1] has priority)

        // TESTCASE 9
         
        #10 EN = 1'b1; I = 4'b0110; // Expected Output: Y = 2'b10 (i[2] has priority)

       // TESTCASE 10
         
        #10 EN = 1'b1; I = 4'b1010; // Expected Output: Y = 2'b11 (i[3] has priority)

      // TESTCASE 11
         
        #10 EN = 1'b1; I = 4'b1111; // Expected Output: Y = 2'b11 (i[3] has highest priority)
         
         #10 $finish;
       end
  
       endmodule
