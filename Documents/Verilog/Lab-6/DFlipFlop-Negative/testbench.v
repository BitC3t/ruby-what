`include "d_ff_negative.v"

module testbench();
    wire Q;
    reg D;

    d_ff_neg dff(D, clk, Q);

    reg clk = 0;
    always #10 clk = ~clk;

    initial begin
        $dumpfile("d_ff_neg.vcd");
        $dumpvars(0, testbench);

        D = 1;
        #10 D = 0;
        #10 D = 0;
        #10 D = 0;
        $finish;
    end

    initial begin
        $monitor("time : %0d | clk :%d | D : %d | Q : %d", $time, clk, D, Q);
    end

endmodule