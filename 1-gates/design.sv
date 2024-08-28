// Code your design here

module allGates(a,b, xorOut, xnorOut, andOut, nandOut, notOut, orOut, norOut);
  input a,b;
  output xorOut, xnorOut, andOut, nandOut, notOut, orOut, norOut;
  assign xorOut = a^b;
  assign xnorOut = ~(a^b);
  assign andOut = a&b;
  assign nandOut = ~(a&b);
  assign notOut = ~a;
  assign orOut = a|b;
  assign norOut = ~(a|b);
endmodule