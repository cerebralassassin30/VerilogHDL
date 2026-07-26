// TESTBENCH

`timescale 1ns/1ps

module priority_encoder_8x3_tb;
reg EN;
reg [7:0] I;
wire [2:0] Y;
initial begin
    $monitor("simtime = %0t, EN = %b, I = %b, Y = %b", $time, EN, I, Y);
    $dumpfile("priority_encoder_8x3.vcd");
    $dumpvars(0, priority_encoder_8x3_tb);
end
priority_encoder_8x3 dut(.EN(EN), .I(I), .Y(Y));
  
initial begin
  
    // testcase 1

    EN = 1'b0; I = 8'b00000000;

    // testcase 2

   #10 EN = 1'b1; I = 8'b00000000;

    //testcase 3

    #10 EN = 1'b1; I = 8'b00000001;

    //testcase 4

    #10 EN = 1'b1; I = 8'b00000010;

    //testcase 5

    #10 EN = 1'b1; I = 8'b00000100;

    //testcase 6

    #10 EN = 1'b1; I = 8'b00001000;

    //testcase 7

    #10 EN = 1'b1; I = 8'b00010000;

    //testcase 8

    #10 EN = 1'b1; I = 8'b00100000;

    //testcase 9

    #10 EN = 1'b1; I = 8'b01000000;

    //testcase 10

    #10 EN = 1'b1; I = 8'b10000000;

    //testcase 11

    #10 EN = 1'b0; I = 8'b11111111;

    //testcase 12

    #10 EN = 1'b1; I = 8'b11111111;

    //testcase 13

    #10 EN = 1'b1; I = 8'b10010001;

    //testcase 14

    #10 EN = 1'b1; I = 8'b00100100;

    //testcase 15

    #10 EN = 1'b1; I = 8'b00001110;

    //testcase 16

    #10 EN = 1'b1; I = 8'b01010010;


    #10 $finish;

end

endmodule
