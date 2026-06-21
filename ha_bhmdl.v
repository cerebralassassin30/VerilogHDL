//VERILOG CODE

`timescale 1ns/1ps
module ha_bhmdl(s,c,a,b);
input a,b;
output reg s,c;
always @(*) begin
s = a ^ b;
c = a & b;
end
endmodule

//TESTBENCH

`timescale 1ns/1ps
module ha_bhmdl_tb;
  reg A,B;
  wire S,C;
  initial begin
    $monitor("simtime = %0t, S = %b, C = %b, A = %b, B = %b", $time,S,C,A,B);
  end
  ha_bhmdl dut(.s(S), .c(C), .a(A), .b(B));
  initial begin
    //testcase 1
    A = 1'b0; B = 1'b0;
    // testcase 2
    #10 A = 1'b0; B = 1'b1;
    // testcase 3
    #10 A = 1'b1; B = 1'b0;
    // testcase 4
    #10 A = 1'b1; B = 1'b1;
    
    #10 $finish;
  end
endmodule
    
