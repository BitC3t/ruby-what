`include "Half_Adder.v"

module full_adder (sum, carry, A, B, C);
output sum, carry;
input A, B, C;

half_adder h1(S1, C1, A, B);
half_adder h2(sum, C2, S1, C);
or(carry, C1, C2);
endmodule

module t_full_adder;
wire sum, carry;
reg t_A, t_B, t_C;

full_adder f1 (sum, carry, t_A, t_B, t_C);
initial #2000 $finish;
initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, t_full_adder);
        t_A = 0; t_B = 0; t_C = 0;
    #10 t_A = 0; t_B = 0; t_C = 1;
    #10 t_A = 0; t_B = 1; t_C = 1;
    #10 t_A = 0; t_B = 1; t_C = 0;
    #10 t_A = 1; t_B = 0; t_C = 0;
    #10 t_A = 1; t_B = 0; t_C = 1;
    #10 t_A = 1; t_B = 1; t_C = 1;
    #10 t_A = 1; t_B = 1; t_C = 0;
end

initial begin
    $monitor("time = %0d, A = %b, B = %b, C = %b, Carry = %b, Sum = %b", $time, t_A, t_B, t_C, carry, sum);
end
endmodule