`include "../src/buffer.sv"

module buffer_tb;

  logic in;
  logic out;

  buffer buffer(.in(in), .out(out));

  initial
    begin
      $dumpfile("buffer_tb.vcd");
      $dumpvars(0);
      #10;
      in=1;
      #10;
      in=0;
      #10;
      in=1;
      #10;
      in=0;
      $finish;
    end

endmodule : buffer_tb
