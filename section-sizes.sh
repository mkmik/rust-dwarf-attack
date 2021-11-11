#!/bin/bash

set -eu -o pipefail

bin=${1:-./target/release/rustack}

awkcommand='{
  n=sprintf("%d", "0x" $3);
  "numfmt --to=iec " n |& getline h;
  print h, $2
}'

du -sh "${bin}"
objdump -h "${bin}" \
 | grep -E " *\d" \
 | gawk --non-decimal-data "${awkcommand}" \
 | sort -h -r
