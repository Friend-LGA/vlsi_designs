`include "../src/multiplexer.sv"

module multiplexer_tb;

  logic [7:0] in;
  logic [2:0] sel;
  logic out;

  multiplexer multiplexer(
    .in(in),
    .sel(sel),
    .out(out)
  );

  initial begin
    $dumpfile("multiplexer_tb.vcd");
    $dumpvars(0);
    #10;
    in0 = 8'b01010101
    sel = 0;
    #10;
    sel = 1;
    #10;
    sel = 2;
    #10;
    sel = 3;
    #10;
    sel = 4;
    #10;
    sel = 5;
    #10;
    sel = 6;
    #10;
    sel = 7;
    #10;
  end

endmodule : multiplexer_tb
