//VERILOG CODE

`timescale 1ns / 1ps

module n_bit_comparator #(parameter N = 8)(a,b,Greater, Equal, Lesser);
input [N-1:0] a,b;
output Greater, Equal, Lesser;
reg Greater, Equal, Lesser;
always@(*) begin
    if(a > b)
    begin
        Greater = 1;
        Equal = 0;
        Lesser = 0;
    end
    else if(a < b)
    begin
        Greater = 0;
        Equal = 0;
        Lesser = 1;
    end
    else
    begin
        Greater = 0;
        Equal = 1;
        Lesser = 0;
    end
end

endmodule
