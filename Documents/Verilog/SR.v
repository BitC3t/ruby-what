module func(output reg Q, input S, input R);

always @ (S, R) begin
    if(S == 1 && R == 0)
        Q <= 1;
    else if(S == 0 && R == 1)
        Q <= 0;
    else if(S == 1 && R == 1)
        Q <= 2;
end
    
endmodule

module t_func;
wire t_Q;
reg t_S, t_R;

func f1(t_Q, t_S, t_R);

initial begin
    $dumpfile("out.vcd");
    $dumpvars(0,t_func);

    t_S = 1; t_R = 0;
end

initial begin
    $monitor("time: %d, S: %b, R: %b, Q: $d", $time, t_S, t_R, t_Q);
end

endmodule