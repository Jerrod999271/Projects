`timescale 1 ns / 1 ns
`include "wireTest2.v"

module wireTest2_tb;

reg W;
reg X;
wire Y;
wire Z;

wireTest2 uut(W, X, Y, Z);

initial begin

    $dumpfile("wireTest2_tb.vcd");
    $dumpvars(0, wireTest2_tb);

    // Test case 1
    W = 0; X = 0;
    #20;

    // Test case 2
    W = 0; X = 1;
    #20;

    // Test case 3
    W = 1; X = 0;
    #20;

    // Test case 4
    W = 1; X = 1;
    #20;

    $display("Wire test complete!");

end

endmodule