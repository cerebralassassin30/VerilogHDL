// Implementation of 7-segment display using BCD 

// VERILOG CODE

// Segment encoding: seg = {A, B, C, D, E, F, G}
// Logic '1' turns a segment ON and logic '0' turns it OFF (Common Cathode)

`timescale 1ns/1ps

module bcd_7seg(bcd,seg);
  input [3:0] bcd;
  output reg [6:0] seg;
  always @ (*) begin
    case(bcd)
      4'b0000: seg = 7'b1111110; // 0
      4'b0001: seg = 7'b0110000; // 1
      4'b0010: seg = 7'b1101101; // 2
      4'b0011: seg = 7'b1111001; // 3
      4'b0100: seg = 7'b0110011; // 4
      4'b0101: seg = 7'b1011011; // 5
      4'b0110: seg = 7'b1011111; // 6
      4'b0111: seg = 7'b1110000; // 7
      4'b1000: seg = 7'b1111111; // 8
      4'b1001: seg = 7'b1111011; // 9
      
      
      // Turn OFF all segments for invalid BCD inputs (10–15)
      
      default : seg = 7'b0000000;
    endcase
  end
endmodule
      
