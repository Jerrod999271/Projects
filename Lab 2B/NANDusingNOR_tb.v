`timescale 1ns / 1ns
`include "NANDusingNOR.v"

module NANDusingNOR_tb;

reg A;
reg B;
wire Q;

NANDusingNOR uut (A, B, C);

initial begin
    $dumpfile("NANDusingNOR_tb.vcd");
    $dumpvars(0, NANDusingNOR_tb);

    A = 0; B = 0; #20
    A = 0; B = 1; #20
    A = 1; B = 0; #20
    A = 1; B = 1; #20

    $display("Complete!");

end

endmodule