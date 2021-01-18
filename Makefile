PDK_ROOT=/home/andrew/pdks/sky130A
MAGICRC=$(PDK_ROOT)/libs.tech/magic/sky130A.magicrc
NETGEN_SETUP=$(PDK_ROOT)/libs.tech/netgen/sky130A_setup.tcl

DESIGN=ring-oscillator

NL=$(DESIGN).spice
STRIPPED_NL=$(DESIGN)-stripped.spice
EXTRACTED_NL=$(DESIGN)-ext.spice

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
	netgen -batch lvs $^ $(NETGEN_SETUP) comp.out -full

.INTERMEDIATE: $(STRIPPED_NL)
$(STRIPPED_NL): $(NL)
	sed -e '/^\.include/d' -e '/^V/d' $< > $@
