`timescale 1ns / 1ps
`include "fullSubtractor.v"

module fullSubtractor_tb;

    // Inputs and outputs
    reg A, B, borrowIn;
    wire difference, borrowOut;

    // Instantiate the full subtractor module

    fullSubtractor uut(op1, op2, borrowIn, difference, borrowOut);

    initial begin

        $dumpfile("fullSubtractor_tb.vcd");
        $dumpvars(0, fullSubtractor_tb);

        // Test cases
        {A, B, borrowIn} = 3'd0; #20;
        {A, B, borrowIn} = 3'd1; #20;
        {A, B, borrowIn} = 3'd2; #20;
        {A, B, borrowIn} = 3'd3; #20;
        {A, B, borrowIn} = 3'd4; #20;
        {A, B, borrowIn} = 3'd5; #20;
        {A, B, borrowIn} = 3'd6; #20;
        {A, B, borrowIn} = 3'd7; #20;
        $display("Finished subtractions!");

    end

endmodule