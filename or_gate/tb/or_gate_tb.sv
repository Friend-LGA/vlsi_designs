`include "../src/or_gate.sv"

module or_gate_tb;

  logic in1;
  logic in2;
  logic out;

  or_gate or_gate(.in1(in1), .in2(in2), .out(out));

  initial
    begin
      $dumpfile("or_gate_tb.vcd");
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

endmodule : or_gate_tb
