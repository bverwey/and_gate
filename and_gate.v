
module and_gate(a, b, y);
  input a, b; // input ports
  output y;    // output ports...
  //putting a and b and gate into one output
  // and gate1(y, a, b); instead of assign statement
  assign y = a | b; // (a AND b)
  
endmodule // no semicolon


module and_gate_top(
  output y
);
  and_gate uut(0, 0, y);
    //put in variables 
    
    endmodule