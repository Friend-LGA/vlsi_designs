module tri_state_buffer(
  input logic in,
  input logic enable,
  output logic out
);

  assign out = enable ? in : 1'bz;

endmodule : tri_state_buffer
