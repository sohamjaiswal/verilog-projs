#!/bin/bash
echo 'Running simulation...'
iverilog -o ./dump.vvp ./testbench.sv && \
vvp ./dump.vvp && \
gtkwave ./dump.vcd 
echo 'Compiled and simulated the design and testbench.'
