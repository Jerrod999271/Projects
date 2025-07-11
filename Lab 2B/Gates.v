//NAND Gates
//Not gate
Not_A = ~(A&A);

//And gate
NAND_AB ~(A&B);
AND_AB = ~(NAND_AB & NAND_AB);

//Or gate
Not_A_NAND = ~(A&A);
Not_B_NAND = ~(B&B)
OR_AB = ~(Not_A_NAND & Not_B_NAND);

//NOR gate
NOR_AB = ~(Or_AB & OR_AB);

//XOR gate
Temp1 = ~(A&B):
temp2 = ~(A&temp1);
temp3 = ~(B&temp2);
XOR_AB ~(temp2 & temp3);

//XNOR gate
XNOR_AB = ~(XOR_AB & XNOR_AB):

//NOR gates
// NOT Gate
    NOT_A = ~(A | A);

    // OR Gate
    OR_AB = ~(~(A | A) | ~(B | B)); 

    // NOR Gate
    NOR_AB = ~(A | B);

    // AND Gate
    AND_AB = ~(NOR_AB | NOR_AB);

    // NAND Gate
    NAND_AB = ~(AND_AB | AND_AB);

    // XOR Gate
    temp1 = ~(A | B);
    temp2 = ~(A | temp1);
    temp3 = ~(B | temp1);
    XOR_AB = ~(temp2 | temp3);

    // XNOR Gate
    XNOR_AB = ~(XOR_AB | XOR_AB);
