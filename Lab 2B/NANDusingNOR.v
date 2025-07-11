//NORgate implementation
module NORgate (A, B, Q);

    input A, B;
    output Q;

    assign Q = ~(A|B);

endmodule

//NAND creation
module NANDusingNOR (A, B, Q);

    input A, B;
    output Q;

    wire C, D, E, F;

//Gate creation
    NORgate u1 (A, A, C);
    NORgate u2 (B, B, D);
    NORgate u3 (C, D, E);
    NORgate u4 (E, E, F);

    assign Q = F;

endmodule
