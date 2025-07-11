module halfSubtractor(op1, op2, difference, borrow);
  
  input op1, op2;
  output difference, borrow;

  assign difference = op1 ^ op2; // XOR operation for difference
  assign borrow = ~op1 & op2; // AND operation for borrow

endmodule

module fullSubtractor(op1, op2, borrowIn, difference, borrowOut);
  
  input op1, op2, borrowIn;
  output difference, borrowOut;

  wire diff1, borrow1, borrow2;

  // First half subtractor
  halfSubtractor hs1(op1, op2, diff1, borrow1);

  // Second half subtractor
  halfSubtractor hs2(diff1, borrowIn, difference, borrow2);

  // Final borrow out calculation
  assign borrowOut = borrow1 | borrow2;

endmodule