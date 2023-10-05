module d_latch(input d, input en, output reg Q);

    always @ (en) begin
        if(en) Q <= d;
    end