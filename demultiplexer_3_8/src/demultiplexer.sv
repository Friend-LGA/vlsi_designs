module demultiplexer(
  input logic in,
  input logic [2:0] sel,
  output logic [7:0] out,
);

  always_comb begin
    out[0] = (in & ~sel[2] & ~sel[1] & ~sel[0]);
    out[1] = (in & ~sel[2] & ~sel[1] & sel[0]);
    out[2] = (in & ~sel[2] & sel[1] & ~sel[0]);
    out[3] = (in & ~sel[2] & sel[1] & sel[0]);
    out[4] = (in & sel[2] & ~sel[1] & ~sel[0]);
    out[5] = (in & sel[2] & ~sel[1] & sel[0]);
    out[6] = (in & sel[2] & sel[1] & ~sel[0]);
    out[7] = (in & sel[2] & sel[1] & sel[0]);
  end

endmodule : demultiplexer
