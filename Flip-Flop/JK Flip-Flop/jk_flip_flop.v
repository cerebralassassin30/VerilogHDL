// VERILOG CODE

`timescale 1ns / 1ps

module jk_ff(q,qbar,clk,rst,j,k);
  input clk,rst,j,k;
  output reg q,qbar;
  
  always@(posedge clk or posedge rst) begin // triggered on the rising edge of clock or reset

    if (rst) begin // when reset is high, set q to 0 and qbar to 1
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else begin // when reset is low, check the values of j and k
        case ({j,k})

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

// Toggle State

            2'b11: begin

                q <= ~q; qbar <= ~qbar;

            end

// Default State
          
            default: begin

                q <= 1'bx; qbar <= 1'bx;

            end

        endcase
    end

    end

endmodule
