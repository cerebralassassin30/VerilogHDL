// IMPLEMENTATION OF 1X2 DEMUX THROUGH BEHAVIORAL MODELLING TECHNIQUE USING IF ELSE STATEMENTS

// VERILOG CODE
`timescale 1ns/1ps

module demux_1x2_bhmdl(y,en,s,d);
input en,s,d;
output reg [1:0]y;
always @(*) begin
    if (en) begin // if en = 1
      if (s) begin // if s = 1
        y[0] = 1'b0;
        y[1] = d;
      end
      else begin // if s = 0
        y[0] = d;
        y[1] = 1'b0;
      end
    end
      else begin // if en = 0
        y[0] = 1'b0;
        y[1] = 1'b0;
      end
  end
    endmodule
