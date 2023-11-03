    module ringctr 
      (  
        input clk,  
        input rstn,  
        output reg [3:0] out  
      );  
      
      always @ (posedge clk) begin  
          if (!rstn)  
             out <= 1;  
          else begin  
             out = {out[0], out[3:1]};
          end  
      end  
    endmodule  