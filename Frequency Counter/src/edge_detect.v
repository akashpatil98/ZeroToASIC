`default_nettype none
`timescale 1ns/1ps
module edge_detect (
    input wire              clk,
    input wire              signal,
    output wire             leading_edge_detect
    );

    reg [2:0]hist;
    wire xor_out;

    always @ (posedge clk)
    begin
        hist <= {hist[1:0], signal};
    end

    assign xor_out = hist[2] ^ hist [1];
    assign leading_edge_detect = hist[1] & xor_out;

endmodule
