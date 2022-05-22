`include "../src/and_gate.sv"

module and_gate_tb;

  logic in1;
  logic in2;
  logic out;

  and_gate and_gate(.in1(in1), .in2(in2), .out(out));

  initial
    begin
      $dumpfile("and_gate_tb.vcd");
      $dumpvars(0);
      #10;
      in1=0;
      in2=0;
      #10;
      in1=0;
      in2=1;
      #10;
      in1=1;
      in2=0;
      #10;
      in1=1;
      in2=1;
      #10;
      $finish;
    end

endmodule : and_gate_tb
