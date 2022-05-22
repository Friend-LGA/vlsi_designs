# User config
set ::env(DESIGN_NAME) or_gate

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.sv]

# Turn off clock
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""

# For small design
set ::env(FP_CORE_UTIL) 0.5
set ::env(FP_PDN_HORIZONTAL_HALO) 5
set ::env(FP_PDN_VERTICAL_HALO) $::env(FP_TAP_HORIZONTAL_HALO)
