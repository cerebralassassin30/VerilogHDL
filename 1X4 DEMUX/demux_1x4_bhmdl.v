// 1x4 DEMUX using Behavioral Modelling

// VERILOG CODE

`timescale 1ns/1ps
module demux_1x4(en, s, d, y);
  input en, d;
  input [1:0] s;
  output reg [3:0] y;

  // Combinational logic
  always @(*) begin

    // Check whether the DEMUX is enabled
    if (en) begin

      // Check the MSB of the select line (s[1])
      if (s[1]) begin

        // s = 11
        if (s[0]) begin
          y[3] = d;
          y[2] = 1'b0;
          y[1] = 1'b0;
          y[0] = 1'b0;
        end

        // s = 10
        else begin
          y[3] = 1'b0;
          y[2] = d;
          y[1] = 1'b0;
          y[0] = 1'b0;
        end

      end // End of if (s[1])

      // s[1] = 0
      else begin

        // s = 01
        if (s[0]) begin
          y[3] = 1'b0;
          y[2] = 1'b0;
          y[1] = d;
          y[0] = 1'b0;
        end

        // s = 00
        else begin
          y[3] = 1'b0;
          y[2] = 1'b0;
          y[1] = 1'b0;
          y[0] = d;
        end

      end // End of else (s[1] = 0)

    end // End of if (en)

    // DEMUX disabled
    else begin
      y[3] = 1'b0;
      y[2] = 1'b0;
      y[1] = 1'b0;
      y[0] = 1'b0;
    end // End of else (en = 0)

  end // End of always block

endmodule
