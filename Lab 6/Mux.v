module mux (
   
   //Input wire creation
    output wire [31:0] y,
    input wire [31:0] a,
                            b,
    input wire sel
    );

   //Assign y to a or b based on sel
    assign  y = (sel) ? a : b;
endmodule