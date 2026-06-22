`timescale 1ns/1ps

module gray_to_binary_tb;
  reg [3:0]G;
  wire [3:0]B;
initial begin
$monitor("simtime = %g,B = %b,G = %b", $time, B,G);
end
gray_to_binary dut(.b(B), .g(G));
initial begin
//TESTCASE 1
G = 4'b0000;
//Expected output B = 4'b0000
  
//TESTCASE 2
#10 G = 4'b0001;
//Expected output B = 4'b0001
  
//TESTCASE 3
#10 G = 4'b0010;
//Expected output B = 4'b0011
  
//TESTCASE 4
#10 G = 4'b0011;
//Expected output B = 4'b0010
  
//TESTCASE 5
#10 G = 4'b0100;
//Expected output B = 4'b0110
  
//TESTCASE 6
#10 G = 4'b0101;
//Expected output B = 4'b0111
  
//TESTCASE 7
#10 G = 4'b0110;
//Expected output B = 4'b0101
  
//TESTCASE 8
#10 G = 4'b0111;
//Expected output B = 4'b0100
  
//TESTCASE 9
#10 G = 4'b1000;
//Expected output B = 4'b1100
    
//TESTCASE 10
#10 G = 4'b1001;
//Expected output B = 4'b1101
  
//TESTCASE 11
#10 G = 4'b1010;
//Expected output B = 4'b1111
    
//TESTCASE 12
#10 G = 4'b1011;
//Expected output B = 4'b1110
    
//TESTCASE 13
#10 G = 4'b1100;
//Expected output B = 4'b1010
    
//TESTCASE 14
#10 G = 4'b1101;
//Expected output B = 4'b1011
    
//TESTCASE 15
#10 G = 4'b1110;
//Expected output B = 4'b1001
    
//TESTCASE 16
#10 G = 4'b1111;
//Expected output B = 4'b1000
    
 #10 $finish;
end
endmodule
    
    
    
