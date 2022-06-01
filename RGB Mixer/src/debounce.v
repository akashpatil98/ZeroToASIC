`default_nettype none
`timescale 1ns/1ns
module debounce (
    input wire clk,
    input wire reset,
    input wire button,
    output reg debounced
);

reg [7:0]sreg;

always @ (posedge clk)
begin
    if (reset)
    begin
        sreg <= 8'b0;
        debounced <= 1'b0;
    end
    else
        begin
            sreg <= {sreg[6:0],button};
        end
    if (sreg == 8'hFF)
        debounced <= 1'b1;
    
    if (sreg == 8'h0)
        debounced <= 1'b0;
end

endmodule
