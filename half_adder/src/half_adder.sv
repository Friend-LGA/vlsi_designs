module half_adder(
  input logic in1,
  input logic in2,
  output logic sum,
  output logic carry
);

  assign sum   = in1 ^ in2;
  assign carry = in1 & in2;

endmodule : half_adder
