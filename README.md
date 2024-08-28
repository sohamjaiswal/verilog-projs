# Verilog Projs

This repository contains code for some undergraduate-level/beginner Verilog projects.

Each folder contains a readme file with a link to the relevant EDA Playground for viewers who do not wish to run the project locally.

> Note: EDA Playground takes away a lot of inner workings of the process of making verilog programs, and although complicated programs can still be made in it, running locally would always open more creativity possibilities for programmers.

## EDA Playground Links

| **Sr. No.** | **Title**                    | **Link**                             |
| ----------- | ---------------------------- | ------------------------------------ |
| **1**       | Basic Gates                  | https://www.edaplayground.com/x/HGNw |
| **2**       | 16 Bit Demux                 | https://www.edaplayground.com/x/76EW |
| **3**       | 16 Bit Mux                   | https://www.edaplayground.com/x/du8U |
| **4**       | 4 Bit Adder                  | https://www.edaplayground.com/x/qdpH |
| **5**       | Three to Eight Encoder       | https://www.edaplayground.com/x/8rKm |
| **6**       | Eight to Three Decoder       | https://www.edaplayground.com/x/dbwr |
| **7**       | BCD to Seven Segment Display | https://www.edaplayground.com/x/NTb9 |
| **8**       | N Bit Comparator             | https://www.edaplayground.com/x/Dy9H |
| **9**       | Set-Reset Flip Flop          | https://www.edaplayground.com/x/vnQY |
| **10**      | Data Flip Flop               | https://www.edaplayground.com/x/Mqf2 |
| **11**      | Jump-Kill Flip Flop          | https://www.edaplayground.com/x/LsDY |
| **12**      | Toggle Flip Flop             | https://www.edaplayground.com/x/Snmn |
| **13**      | Ring Counter                 | https://www.edaplayground.com/x/9Unu |
| **14**      | BCD Counter                  | https://www.edaplayground.com/x/vDtA |
| **15**      | VGA Project                  | N/A Can't run on EDA Playground      |

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

## Project

Sample project showcasing a simple demo with a few moving parts together to make something that can be considered complicated at first sight.
