`default_nettype none
`timescale 1ns/1ns
module encoder #(
    parameter WIDTH = 8,
    parameter JUMP_VALUE = 1)
    (
    input clk,
    input reset,
    input a,
    input b,
    output reg [WIDTH-1:0] value
);
    reg [3:0]code;

    /*value to store old and new A and B*/
    always @ (posedge clk)
    begin
        code <= {a, code[3], b, code[1]};
    end

    always @  (posedge clk)
    begin
        if (reset)
            value <= 0;
        else 
            begin
                casex(code)
                    4'b1000: begin
                        value <= value + JUMP_VALUE;
                    end
                    4'b0111: begin
                        value <= value + JUMP_VALUE;
                    end
                    4'b0010: begin
                        value <= value - JUMP_VALUE;
                    end
                    4'b1101: begin
                        value <= value - JUMP_VALUE;
                    end
                endcase
            end
    end

endmodule
