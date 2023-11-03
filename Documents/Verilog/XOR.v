module func (out, A, B);
output out;
input A, B;

assign out = (A && (!B)) || ((!A) && B);
    
endmodule

module t_func;
wire t_out;
reg t_A, t_B;

parameter stop = 50;

func F1 (t_out, t_A, t_B);

initial #stop $finish;
    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0,t_func);
            t_A = 0; t_B = 0;
        #10 t_A = 1; t_B = 0;
        #10 t_A = 1; t_B = 1;
        #10 t_A = 0; t_B = 1;
    end

    initial begin
        $monitor("time = %d, A = %b, B = %b, out = %b", $time, t_A, t_B, t_out);
    end
endmodule