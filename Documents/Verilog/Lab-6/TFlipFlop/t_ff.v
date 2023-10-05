module t_ff(input T, input clk, output reg Q);

    always @ (posedge clk) begin
        if(T) Q <= ~Q;
    end

endmodule

// Sync Reset
/*module t_ff_res(input T, input clk, input res, output reg Q);

    always @ (posedge clk) begin
        if(res) Q <= 0;
        else begin
            if(T) Q <= ~Q;
        end
    end

endmodule*/

// Async Reset
/*module t_ff_res(input T, input clk, input res, output reg Q);

    always @ (posedge clk or negedge res) begin
        if(~res) Q <= 0;
        else begin
            if(T) Q <= ~Q;
        end
    end

endmodule*/