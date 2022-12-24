
DESIGN_SRCS := $(sort $(wildcard hardware/adders/*.v))
TESTBENCH := loaAdder_tb
OUT := $(TESTBENCH)
VCD := $(TESTBENCH).vcd

help: 
	@echo "TODO..." 

sim: ## simulate the design depending on which testbench
	@echo "Checking simulation depth..."
	@iverilog -o $(OUT) hardware/verification/$(TESTBENCH).v   $(DESIGN_SRCS) 	
	@mkdir -p out && mv $(OUT) out/ 
	@echo  "Simulating $(OUT)..."
	@vvp out/$(OUT)
	@echo  "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sim-view: sim
	@gtkwave out/$(VCD) & 

gen-testvec:
	@python3 scripts/generate_testvectors.py

clean:
	@rm -f out/*

# PHONY targets are executed independent of changes in their depencencies
.PHONY: help
