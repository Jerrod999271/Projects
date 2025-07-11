//Detriminimg what type of instruction is being executed

module if_id(
    output reg [31:0] instrout,
                            npcout,
    input wire [31:0]        instr,
                                npc
    );
    initial begin
        instrout <= 0;
        npcout <= 0;
    end
    always @* begin
        #1 instrout <= instr;
                npcout <= npc;
    end
endmodule