load ring-oscillator

extract

# generate initial netlist
ext2sim labels on
ext2sim

# extract detailed resistances (.res.ext)
extresist

# generate spice netlist including parasitics
# (using the detailed resistances from extresist)
ext2spice lvs
ext2spice rthresh 0
ext2spice cthresh 0
ext2spice extresist on
ext2spice -o ring-oscillator-pex.spice
