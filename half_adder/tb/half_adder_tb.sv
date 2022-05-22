`include "../src/half_adder.sv"

module half_adder_tb;

  logic in1;
  logic in2;
  logic sum;
  logic carry;

  half_adder half_adder(.in1(in1), .in2(in2), .sum(sum), .carry(carry));

  initial
    begin
      $dumpfile("half_adder_tb.vcd");
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

endmodule : half_adder_tb
