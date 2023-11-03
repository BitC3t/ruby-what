module ripple(
    output [3:0] A,
    input clk, res
);

tff tf1(A[0], clk, res);
tff tf2(A[1], A[0], res);
tff tf3(A[2], A[1], res);
tff tf4(A[3], A[2], res);

endmodule