`include "dff.v"

module four_bit_reg(in, out, clk, res);
    input [3:0] in;
    output reg [3:0] q;
    input clk, res;
    reg d0, d1, d2, d3;

    dff df0(d0, clk, q[0], res);
    dff df1(d1, clk, q[1], res);
    dff df2(d2, clk, q[2], res);
    dff df3(d3, clk, q[3], res);


    always @ (posedge clk)
        if(clk) begin
            d0 = A[0];
            d1 = A[1];
            d2 = A[2];
            d3 = A[3];
        end
        endmodule