# For now, use iverilog since it seems display scaling is a little weird with gui tools.
VCC = iverilog
VFLAGS = -Wall

.PHONY: clean

all: half_adder.vvp half_adder_tb.vvp

clean:
	rm -rf half_adder.vvp half_adder_tb.vvp *.vcd

half_adder.vvp: half_adder.v
	$(VCC) $(VFLAGS) -o half_adder.vvp half_adder.v

half_adder_tb.vvp: half_adder_tb.v
	$(VCC) $(VFLAGS) -o half_adder_tb.vvp half_adder_tb.v
