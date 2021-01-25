PDK_ROOT=/home/andrew/pdks/sky130A
MAGICRC=$(PDK_ROOT)/libs.tech/magic/sky130A.magicrc
NETGEN_SETUP=$(PDK_ROOT)/libs.tech/netgen/sky130A_setup.tcl

DESIGN=ring-oscillator

NL=$(DESIGN).spice
STRIPPED_NL=$(DESIGN)-stripped.spice
EXTRACTED_NL=$(DESIGN)-ext.spice
PEX_NL=$(DESIGN)-pex.spice

.PHONY: extract
extract: $(EXTRACTED_NL)

$(EXTRACTED_NL): $(DESIGN).mag
	magic \
	  -rcfile $(MAGICRC) \
	  -dnull -noconsole \
	  mag_to_spice.tcl \
	  < /dev/null

.PHONY: lvs
lvs: $(STRIPPED_NL) $(EXTRACTED_NL)
	netgen -batch lvs $^ $(NETGEN_SETUP) logs/comp.out -full

.INTERMEDIATE: $(STRIPPED_NL)
$(STRIPPED_NL): $(NL)
	sed -e '/^\.include/d' -e '/^V/d' $< > $@

.PHONY: pex
pex: $(PEX_NL)

.PHONY: sim
sim:
	ngspice -b sim.spice | tee logs/sim.log
	ps2pdf logs/transient.ps logs/transient.pdf
	ps2pdf logs/spectrum.ps logs/spectrum.pdf

$(PEX_NL): $(DESIGN).mag
	magic \
	  -rcfile $(MAGICRC) \
	  -dnull -noconsole \
	  mag_to_spice_pex.tcl \
	  < /dev/null

.PHONY: edit-layout
edit-layout:
	magic -rcfile $(MAGICRC) $(DESIGN) -d cairo
