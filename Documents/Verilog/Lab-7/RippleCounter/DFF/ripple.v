module ripple(
    output [3:0] A,
    input clk, res
);

dff tf1(A[0], clk, res);
dff tf2(A[1], A[0], res);
dff tf3(A[2], A[1], res);
dff tf4(A[3], A[2], res);

endmodule