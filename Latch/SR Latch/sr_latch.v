module sr_latch(en,rst,s,r,q,qbar);
  input en,rst,s,r;
  output reg q,qbar;
  always@(en or rst or s or r)begin
    if (en) begin
      
      //reset logic
      
      if (rst) begin
        q <= 1'b0;
        qbar <= 1'b1;
        
      end
      
      //memory condition
      
      else if (!s && !r) begin  // ( s == 0 && r == 0)
        q <= q;
        qbar <= qbar;
        
      end
      
      // reset condition
      
      else if (!s && r) begin // ( s == 0 && r == 1)
        q <= 1'b0;
        qbar <= 1'b1;
        
      end
      
      // set condition
      
      else if (s && !r) begin // ( s == 1 && r == 0)
        q <= 1'b1;
        qbar <= 1'b0;
        
      end
      
      // invalid condition
      
      else if (s && r) begin // ( s == 1 && r == 1)
        q <= 1'bx;
        qbar <= 1'bx;
        
      end
    end
  end
endmodule
