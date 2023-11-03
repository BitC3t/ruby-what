module shift (
  input clk,    // system clock
  input D,
  output reg [3:0]Q=0); 
  
   
  always @(posedge clk) begin
    Q <= {D, Q[3:1]}
  end
endmodule