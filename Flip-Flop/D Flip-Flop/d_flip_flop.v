// VERILOG CODE

`timescale 1ns / 1ps

module d_ff(q,qbar,clk,rst,d);
  input clk,rst,d;
  output reg q,qbar;
  
  always@(posedge clk or posedge rst) begin // triggered on the rising edge of clock or reset

    if (rst) begin // when reset is high, set q to 0 and qbar to 1
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else begin // when reset is low, check the values of d
        q <= d;
        qbar <= ~d;
    end
  end
endmodule
