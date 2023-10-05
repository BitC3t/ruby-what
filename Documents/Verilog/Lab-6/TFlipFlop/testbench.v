`include "t_ff.v"

module testbench();
    wire Q;
    reg T;

    t_ff t(T, clk, Q);

    reg clk = 0;
    always #10 clk = ~clk;

    initial begin
        $dumpfile("t_ff.vcd");
        $dumpvars(0, testbench);

        T = 0;
        #10 T = 1;
        #10 T = 1;
        #10 T = 0;
        $finish;
    end

    initial begin
        $monitor("time : %0d | clk :%d | T : %d | Q : %d", $time, clk, T, Q);
    end

endmodule