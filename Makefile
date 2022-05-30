# Change the path to match your installation of TDL/ATEgen
#
ATEGEN=/opt/tools/tdl_1.10.8-3_Linux64/bin/ategen

CONFIG=ategen_setup_template.py
STIL=sample_dynamic_dc.stil


all: $(CONFIG)  $(STIL)
	$(ATEGEN) -setup $(CONFIG) $(STIL)


clean:
	rm -rf stil_with_dc
