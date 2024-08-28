iverilog -o ./dump.vvp ./testbench.sv && \
vvp ./dump.vvp && \
gtkwave ./dump.vcd