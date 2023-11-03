module shift_uni(
    input [3:0] i_par,
    output reg [3:0] a_par,
    input s1, s0,
    input MSB_in, LSB_in,
    CLK, clear
);

always @ (posedge clk, negedge clear) 
    if(clear == 0) a_par = 4'b0000;
    else
        case({s1, s0}) 
            2'b00: a_par <= a_par;
            2'b01: a_par <= {MSB_in, a_par[3:1]}
            2'b10: a_par <= {a_par[2:0], LSB_in}
            2'b11: a_par <= i_par
        endcase
        endmodule