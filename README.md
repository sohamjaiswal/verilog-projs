# Verilog Projs

This repository contains code for some undergraduate-level/beginner Verilog projects.

Each folder contains a readme file with a link to the relevant EDA Playground for viewers who do not wish to run the project locally.

> Note: EDA Playground takes away a lot of inner workings of the process of making verilog programs, and although complicated programs can still be made in it, running locally would always open more creativity possibilities for programmers.

## Local Running Pre-Requisites

- On Linux
  - Installation of
    - Icarus Verilog (use OS shipped package manager or compile)
    - GTKWave (use OS shipped package manager or compile)
- MacOS
  - Install HomeBrew from https://brew.sh/
  - Installation of
    - Icarus Verilog `brew install icarus-verilog`
    - GTKWave
      - Use `brew install --HEAD randomplum/gtkwave/gtkwave && brew link gtkwave` brew listing doesn't work
- Windows
  - Installation of
    - Icarus Verilog from https://bleyer.org/icarus/
    - GTKWave from https://gtkwave.sourceforge.net/

## Running

On MacOS/Linux

1. Cd into the directory of project you want to run.
2. Use `./run.sh` to run the project.

On Windows

1. Create dump using Icarus Verilog.
2. Open dump in GTKWave.
