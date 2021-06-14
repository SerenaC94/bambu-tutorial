#!/bin/bash
export PATH=/opt/panda/bin:$PATH

mkdir -p search
cd search
echo "#simulation of search function"
bambu ../tree.c --top-fname=main --top-rtldesign-name=search --simulate -v2 -DNDEBUG -DBAMBU_PROFILING --simulator=ICARUS --generate-tb=../test_search.xml -v2 --print-dot 2>&1 | tee pop.log
cd ..



