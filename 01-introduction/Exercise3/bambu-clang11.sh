#!/bin/bash
script=$(readlink -e $0)
root_dir=$(dirname $script)

rm -rf keccak_V7
mkdir keccak_V7
cd keccak_V7
timeout 2h /opt/panda/bin/bambu --top-fname=kekka_coproc -v4 --clock-period=2.5 --device-name=xc7vx690t-3ffg1930-VVD $root_dir/Keccak.c --generate-tb=$root_dir/test.xml --simulate --compiler=I386_CLANG11 --no-iob --print-dot "$@"
return_value=$?
if test $return_value != 0; then
   exit $return_value
fi
cd ..
exit 0
