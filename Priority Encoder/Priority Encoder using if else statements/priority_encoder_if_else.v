// VERILOG CODE

`timescale 1ns/1ps
module priority_encoder_4x2(y,en,i);
  input en;
  input [3:0]i;
  output reg [1:0]y;
  always @(*) begin
    
    if (en) begin // Encoder enabled
      
      if (i[3]) begin // Highest Priority Input
      y = 2'b11; 
    end
    
      else if (i[2]) begin // Next Highest Priority Input
      y = 2'b10;
    end
    
      else if (i[1]) begin // Next Highest Priority Input
      y = 2'b01;
    end
    
    else begin // i[0] has priority or no input is active
      y = 2'b00;
    end
    
  end
    else begin
      y = 2'b00; // Encoder disabled
    end
  end
endmodule
