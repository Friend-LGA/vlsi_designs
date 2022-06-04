
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /openlane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /openlane/designs/current/runs/RUN__2022_06_04__22_38_06/results/routing/buffer.def
}
load buffer -dereference
cd /openlane/designs/current/runs/RUN__2022_06_04__22_38_06/results/signoff/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /openlane/designs/current/runs/RUN__2022_06_04__22_38_06/results/signoff/buffer.spice buffer.ext
feedback save /openlane/designs/current/runs/RUN__2022_06_04__22_38_06/logs/signoff/31-ext2spice.feedback.txt
# exec cp buffer.spice /openlane/designs/current/runs/RUN__2022_06_04__22_38_06/results/signoff/buffer.spice

