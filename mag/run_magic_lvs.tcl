# run_magic_drc.tcl ---
#    batch script for running DRC

crashbackups stop
drc euclidean on
drc style drc(full)
drc on
snap internal
gds flatglob *__example_*
gds flatten true
gds read /home/mustafa/mabrains/caravel_user_project_ldo/gds/ldo_v1/ldo_flattened_f.gds
load ldo_flattened_f
select top cell
expand
extract all
ext2spice lvs
ext2spice -M -o extracted.spi
