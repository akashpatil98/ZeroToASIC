`default_nettype none
`timescale 1ns/1ns
module pwm (
    input wire clk,
    input wire reset,
    output wire out,
    input wire [7:0] level
    );

    reg [7:0]count;

    /*Counter*/
    always @ (posedge clk)
    begin
        if (reset)
            begin
                count <= 8'b0;
            end

        else
            begin
                if (count == 8'hFF)
                    count <= 8'h00;
                else
                    count <= count + 1'b1;
            end
    end

    assign out = ((count < level) && (!reset == 1)) ? 1'b1 : 1'b0;

endmodule
