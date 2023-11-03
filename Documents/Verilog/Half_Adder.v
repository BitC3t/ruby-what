module half_adder (sum, carry, A, B);
output sum, carry;
input A, B;

xor a1(sum, A, B);
and b1(carry, A, B);
endmodule

module t_half_adder;
wire t_sum, t_carry;
reg t_A, t_B;

half_adder f1 (t_sum, t_carry, t_A, t_B);

initial #100 $finish;
    initial begin
        //$dumpfile("out.vcd");
        //$dumpvars(0, t_half_adder);
            t_A = 1; t_B = 1;
        #10 t_A = 1; t_B = 0;
        #10 t_A = 0; t_B = 1;
        #10 t_A = 0; t_B = 0;
    end
endmodule