// TESTBENCH

`timescale 1ns / 1ps

module ha_strmdl_tb;
reg A,B;
wire S,C;
initial
begin
$monitor("simtime = %g,A = %b,B = %b,S = %b,C = %b",$time,A,B,S,C);
end
ha_strmdl dut(.a(A),.b(B),.s(S),.c(C));
initial
begin
  //TESTCASE 1
    A = 1'b0; B = 1'b0;
    //TESTCASE 2
#10 A = 1'b0; B = 1'b1;
    //TESTCASE 3
#10 A = 1'b1; B = 1'b0;
    //TESTCASE 4
#10 A = 1'b1; B = 1'b1; 
  
#10 $finish;
  
end
endmodule
