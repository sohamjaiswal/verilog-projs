// Code your design here
module oneBComparator (input wire compared,comparer, output wire lessThan,equalTo,moreThan);
  assign lessThan = (compared < comparer);
  assign equalTo = (compared === comparer);
  assign moreThan = (compared > comparer);
endmodule