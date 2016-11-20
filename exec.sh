#!/bin/sh

s="$1"
sml="$1.ml"
ss="$1.s"
library="library.s"
globals="$2"

if [ $# = 2 ]; then
  cat $sml > swap.ml
  cat $globals $sml > temp.ml
  cat temp.ml > $sml
else
  cat $sml > swap.ml
  cat $sml > temp.ml
fi
./min-caml.opt $s
cp swap.ml $sml
cat $library $ss > temp.s
cp temp.s $ss
rm temp.s temp.ml swap.ml
