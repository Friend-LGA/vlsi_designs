`include "../src/tri_state_buffer.sv"

module tri_state_buffer_tb;

  logic in;
  logic enable;
  logic out;

  tri_state_buffer tri_state_buffer(.in(in), .enable(enable), .out(out));

  initial
    begin
      $dumpfile("tri_state_buffer_tb.vcd");
      $dumpvars(0);
      #10;
      enable=1;
      in=1;
      #10;
      in=0;
      #10;
      enable=0;
      in=1;
      #10;
      in=0;
      #10;
      enable=1;
      in=1;
      $finish;
    end

endmodule : tri_state_buffer_tb
