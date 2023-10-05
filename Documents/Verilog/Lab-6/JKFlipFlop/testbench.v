`include "jk_ff.v"

module testbench();
    wire Q;
    reg J, K;

    jk_ff jk(J, K, clk, Q);

    reg clk = 0;
    always #10 clk = ~clk;

    initial begin
        $dumpfile("jk_ff.vcd");
        $dumpvars(0, testbench);

        J = 1; K = 0;
        #10 J = 1; K = 0;
        #10 J = 0; K = 0;
        #10 J = 1; K = 1;
        $finish;
    end

    initial begin
        $monitor("time : %0d | clk :%d | J : %d | K : %d | Q : %d", $time, clk, J, K, Q);
    end

endmodule