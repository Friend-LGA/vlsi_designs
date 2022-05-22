`include "../src/inverter.sv"

module inverter_tb;

  logic in;
  logic out;

  inverter inverter(.in(in), .out(out));

  initial
    begin
      $dumpfile("inverter_tb.vcd");
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

endmodule : inverter_tb
