#!/bin/bash
script=$(readlink -e $0)
root_dir=$(dirname $script)

rm -rf keccak_V7-INFER
mkdir keccak_V7-INFER
cd keccak_V7-INFER
timeout 2h /opt/panda/bin/bambu -O3 --top-fname=kekka_coproc -v4 --clock-period=2.5 --device-name=xc7vx690t-3ffg1930-VVD $root_dir/Keccak.c --generate-tb=$root_dir/test.xml --simulate --compiler=I386_CLANG11 --no-iob --generate-interface=INFER --print-dot "$@"
return_value=$?
if test $return_value != 0; then
   exit $return_value
fi
cd ..
exit 0
