#!/bin/bash
export PATH=/opt/panda/bin:$PATH

mkdir -p ludecomp
cd ludecomp
echo "#synthesis of fun"
bambu ../LUdecomposition.c --top-fname=fun --simulate -v2 --simulator=VERILATOR --generate-tb=../test.xml -v2 --print-dot -O1 2>&1 | tee ludecomp.log
cd ..


