module wireTest2 (W, X, Y, Z);

    input W;
    input X;
    output Y;
    output Z;

    assign Y = ~X;
    assign Z = ~Y;

endmodule