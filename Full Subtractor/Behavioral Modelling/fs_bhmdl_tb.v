// TESTBENCH

`timescale 1ns/1ps

module fs_bhmdl_tb;
reg A,B,BRIN;
wire D,BRO;
initial begin
$monitor("simtime = %0t, D= %b, BRO = %b, A = %b, B= %b, BRIN = %b", $time, D,BRO,A,B,BRIN);
end
  fs_bhmdl dut(.d(D), .bro(BRO), .a(A), .b(B), .brin(BRIN));
  
initial begin
  
// TESTCASE 1
    A = 1'b0; B = 1'b0; BRIN = 1'b0;
  
// TESTCASE 2
#10 A = 1'b0; B = 1'b0; BRIN = 1'b1;
  
// TESTCASE 3
#10 A = 1'b0; B = 1'b1; BRIN = 1'b0;
  
// TESTCASE 4
#10 A = 1'b0; B = 1'b1; BRIN = 1'b1;
  
// TESTCASE 5
#10 A = 1'b1; B = 1'b0; BRIN = 1'b0;
  
// TESTCASE 6
#10 A = 1'b1; B = 1'b0; BRIN = 1'b1;
  
// TESTCASE 7
#10 A = 1'b1; B = 1'b1; BRIN = 1'b0;
  
// TESTCASE 8
#10 A = 1'b1; B = 1'b1; BRIN = 1'b1;

#10 $finish;

end
endmodule
