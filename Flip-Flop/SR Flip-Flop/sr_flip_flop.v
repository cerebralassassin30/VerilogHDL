// VERILOG CODE

`timescale 1ns / 1ps

module sr_ff(q,qbar,clk,rst,s,r);
  input clk,rst,s,r;
  output reg q,qbar;
  
  always@(posedge clk or posedge rst) begin // triggered on the rising edge of clock or reset

    if (rst) begin // when reset is high, set q to 0 and qbar to 1
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else begin // when reset is low, check the values of s and r
        case ({s,r})

// Memory State

            2'b00: begin

                q <= q; qbar <= qbar;

            end

// Reset State

            2'b01: begin

                q <= 1'b0; qbar <= 1'b1;

            end

// Set State

            2'b10: begin

                q <= 1'b1; qbar <= 1'b0;
            end

// Invalid State

            2'b11: begin

                q <= 1'bx; qbar <= 1'bx;

            end
            default: begin

                q <= 1'bx; qbar <= 1'bx;

            end

        endcase
    end

    end

endmodule
