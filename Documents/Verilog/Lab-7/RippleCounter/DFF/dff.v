module dff(clk, q, res);
    input clk, res;
    output reg q;
    
    always @ (posedge clk or negedge res) begin
        if(!res) q <= 0;
        else q <= ~q;
    end
    endmodule