/* Generated by Yosys 0.17+33 (git sha1 0b1a1a576, gcc 11.2.0-19ubuntu1 -fPIC -Os) */

/* top =  1  */
/* src = "inverter.v:1.1-8.10" */
module inverter(in, out);
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:259.37-259.38" */
  wire _0_;
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:259.25-259.28" */
  wire _1_;
  /* src = "/yosys/share/intel_alm/common/alm_map.v:17.29-19.18|/yosys/share/intel_alm/common/quartus_rename.v:90.26-90.27" */
  wire _2_;
  /* src = "/yosys/share/intel_alm/common/alm_map.v:17.29-19.18|/yosys/share/intel_alm/common/quartus_rename.v:90.36-90.37" */
  wire _3_;
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:269.37-269.38" */
  wire _4_;
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:269.40-269.42" */
  wire _5_;
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:269.26-269.29" */
  wire _6_;
  /* src = "inverter.v:2.14-2.16" */
  input in;
  wire in;
  /* force_downto = 1 */
  /* src = "/yosys/share/intel_alm/common/alm_map.v:7.19-7.20" */
  wire in_MISTRAL_IB_PAD_O;
  /* src = "inverter.v:3.15-3.18" */
  output out;
  wire out;
  wire out_MISTRAL_OB_PAD_I;
  /* keep = 1 */
  /* module_not_derived = 1 */
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:263.3-266.2" */
  cyclonev_io_ibuf in_MISTRAL_IB_PAD (
    .i(in),
    .o(in_MISTRAL_IB_PAD_O)
  );
  defparam in_MISTRAL_IB_PAD.bus_hold = "false";
  defparam in_MISTRAL_IB_PAD.differential_mode = "false";
  /* keep = 1 */
  /* module_not_derived = 1 */
  /* src = "/yosys/share/intel_alm/common/quartus_rename.v:273.3-277.2" */
  cyclonev_io_obuf out_MISTRAL_OB_PAD (
    .i(out_MISTRAL_OB_PAD_I),
    .o(out),
    .oe(_5_)
  );
  defparam out_MISTRAL_OB_PAD.bus_hold = "false";
  defparam out_MISTRAL_OB_PAD.differential_mode = "false";
  /* module_not_derived = 1 */
  /* src = "/yosys/share/intel_alm/common/alm_map.v:17.29-19.18|/yosys/share/intel_alm/common/quartus_rename.v:92.5-92.40" */
  NOT out_MISTRAL_OB_PAD_I_MISTRAL_NOT_Q (
    .IN(in_MISTRAL_IB_PAD_O),
    .OUT(out_MISTRAL_OB_PAD_I)
  );
endmodule
