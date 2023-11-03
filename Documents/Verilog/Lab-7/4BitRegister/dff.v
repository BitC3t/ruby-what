module dff(d, clk, q, res);
    input d, clk, res;
    output reg q;
    
    always @ (posedge clk or negedge res) begin
        if(!res) q <= 0;
        else q <= d;
    end