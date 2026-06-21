// TESTBENCH 

`timescale 1ns/1ps

module hs_bhmdl_tb;
reg A,B;
wire D,BR;
initial begin
$monitor("simtime = %0t, D= %b, BR = %b, A = %b, B= %b", $time, D,BR,A,B);
end
hs_bhmdl dut(.d(D), .br(BR), .a(A), .b(B));
  
initial begin
  
// TESTCASE 1
    A = 1'b0; B = 1'b0;
  
// TESTCASE 2
#10 A = 1'b0; B = 1'b1;
  
// TESTCASE 3
#10 A = 1'b1; B = 1'b0;
  
// TESTCASE 4
#10 A = 1'b1; B = 1'b1;

#10 $finish;

end
endmodule
