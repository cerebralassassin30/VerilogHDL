`timescale 1ns/1ps

module gray_to_binary(b,g);
input [3:0]g;
output [3:0]b;
assign b[3] = g[3];
  
assign b[2] = b[3] ^ g[2]; // THAT WILL EXPAND TO b[2] = (g[3]^g[2]);
  
assign b[1] = b[2] ^ g[1]; //THAT WILL EXPAND TO b[1] = (g[3]^g[2]^g[1]);
  
assign b[0] = b[1] ^ g[0]; //THAT WILL EXPAND TO b[0] = (g[3]^g[2]^g[1]^g[0]);
  
endmodule
