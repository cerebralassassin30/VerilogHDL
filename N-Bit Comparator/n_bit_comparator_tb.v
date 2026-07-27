// TESTBENCH

`timescale 1ns/1ps

module n_bit_comparator_tb;
parameter N = 8;
  reg [N-1:0] A, B;
wire GREATER, EQUAL, LESSER;
initial begin
    $monitor("simtime = %0t, A=%b, B=%b, GREATER=%b, EQUAL=%b, LESSER=%b", $time, A, B, GREATER, EQUAL, LESSER);
    $dumpfile("n_bit_comparator.vcd");
    $dumpvars(0, n_bit_comparator_tb);
end
n_bit_comparator #(N) dut(.a(A), .b(B), .Greater(GREATER), .Equal(EQUAL), .Lesser(LESSER));
initial begin

    //testcase 1

    A = 8'h00; B = 8'h00; // Expected Output: EQUAL=1, GREATER=0, LESSER=0

    //testcase 2

    #10 A = 8'hFF; B = 8'h00; // Expected Output: GREATER=1, EQUAL=0, LESSER=0

    //testcase 3

    #10 A = 8'h00; B = 8'hFF; // Expected Output: LESSER=1, EQUAL=0, GREATER=0

    //testcase 4

    #10 A = 8'hAA; B = 8'h55; // Expected Output: GREATER=1, EQUAL=0, LESSER=0

    //testcase 5

    #10 A = 8'h55; B = 8'hAA; // Expected Output: LESSER=1, EQUAL=0, GREATER=0

    #10 $finish;

end

endmodule
