`include "../src/demultiplexer.sv"

module demultiplexer_tb;

  logic in;
  logic [2:0] sel;
  logic [7:0] out;

  demultiplexer demultiplexer(
    .sel(sel),
    .in(in),
    .out(out)
  );

  initial begin
    $dumpfile("demultiplexer_tb.vcd");
    $dumpvars(0);
    #10;
    in = 1;
    sel = 3'b000;
    #10;
    sel = 3'b001;
    #10;
    sel = 3'b010;
    #10;
    sel = 3'b011;
    #10;
    sel = 3'b100;
    #10;
    sel = 3'b101;
    #10;
    sel = 3'b110;
    #10;
    sel = 3'b111;
    #10;
  end

endmodule : demultiplexer_tb
