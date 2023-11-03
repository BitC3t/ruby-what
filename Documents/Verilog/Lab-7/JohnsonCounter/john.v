    module johnson_ctr 
      (  
        input clk,  
        input rstn,  
        output reg [3:0] out  
      );  
      
      always @ (posedge clk) begin  
          if (!rstn)  
             out <= 1;  
          else 
            out <= {~out[0], out[3:1]}; 
      end  
    endmodule  