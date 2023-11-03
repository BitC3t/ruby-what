module tff(
    input clk, res, t,
    output reg q
);

always @ (posedge clk or negedge res) 
begin
    if(!res) q <= 0;
    else 
        if(t)
            q <= ~q;
        else 
            q <= q;    

end
endmodule