PDK_ROOT=/home/andrew/pdks/sky130A
MAGICRC=$(PDK_ROOT)/libs.tech/magic/sky130A.magicrc

.PHONY: extract
extract:
	magic \
	  -rcfile $(MAGICRC) \
	  -dnull -noconsole \
	  mag_to_spice.tcl \
	  < /dev/null

