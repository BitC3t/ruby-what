module bcd(
    input clk, res,
    output reg [3:0] q
);

reg [3:0] test;

always @ (posedge clk or negedge res) 
begin
    if(~res) begin
        q <= 4'b0000;
        test <= 4'b0000;
    end
    else 
        test <= test + 1;
        if(test == 4'b1001) begin
            test <= 4'b0000;
        end
        q <= test;

end
endmodule


end