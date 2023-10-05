module d_ff_neg(input D, input clk, output reg Q);

    always @ (negedge clk) begin
        Q <= D;
    end
    
endmodule

// Synchronous Reset
/*module d_ff_neg_reset(input D, input clk, input res, output reg Q);

    always @ (negedge clk) begin
        if(res) Q <= 0;
        else Q <= D;
    end
    
endmodule*/

// Asynchronous Reset
/*module d_ff_neg_reset(input D, input clk, input res, output reg Q);

    always @ (negedge clk or negedge res) begin
        if(~res) Q <= 0;
        else Q <= D;
    end
    
endmodule*/