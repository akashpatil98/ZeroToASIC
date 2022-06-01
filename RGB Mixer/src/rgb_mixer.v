`default_nettype none
`timescale 1ns/1ns
module rgb_mixer (
    input clk,
    input reset,
    input enc0_a,
    input enc0_b,
    input enc1_a,
    input enc1_b,
    input enc2_a,
    input enc2_b,
    output pwm0_out,
    output pwm1_out,
    output pwm2_out
);
    wire enc0_a_out, enc0_b_out;
    wire [7:0]enc0, enc1, enc2;
    wire enc1_a_out, enc1_b_out;
    wire enc2_a_out, enc2_b_out;

    /*enc0*/
    debounce d1 (clk, reset, enc0_a, enc0_a_out);
    debounce d2 (clk, reset, enc0_b, enc0_b_out);
    encoder e1 (clk, reset, enc0_a_out, enc0_b_out, enc0);
    pwm p1 (clk, reset, pwm0_out, enc0);

    /*enc1*/
    debounce d3 (clk, reset, enc1_a, enc1_a_out);
    debounce d4 (clk, reset, enc1_b, enc1_b_out);
    encoder e2 (clk, reset, enc1_a_out, enc1_b_out, enc1);
    pwm p2 (clk, reset, pwm1_out, enc1);

    /*enc2*/
    debounce d5 (clk, reset, enc2_a, enc2_a_out);
    debounce d6 (clk, reset, enc2_b, enc2_b_out);
    encoder e3 (clk, reset, enc2_a_out, enc2_b_out, enc2);
    pwm p3 (clk, reset, pwm2_out, enc2);

endmodule
