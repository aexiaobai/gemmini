#!/bin/bash

export GEMMINI_ONLY_GENERATE_GEMMINI_H=1

cd ../../sims/verilator/
echo Generating new gemmini_params.h file...
make CONFIG=CustomGemminiSoCConfig 2> build.log

cp software/gemmini-rocc-tests/include/gemmini_params.h ../../toolchains/esp-tools/riscv-isa-sim/gemmini/gemmini_params.h
cd ../../toolchains/esp-tools/riscv-isa-sim/build
make && make install
