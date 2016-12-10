#!/bin/sh

s="$1"
sml="$1.ml"
ss="$1.s"
array="library.s"
library="$2"

if [ $# = 2 ]; then
  cat $sml > swap.ml
  cat $library $sml > temp.ml
  cat temp.ml > $sml
else
  cat $sml > swap.ml
  cat $sml > temp.ml
fi
./min-caml.opt $s -inline 250 -iter 10 -global globals
cp swap.ml $sml
cat $array $ss > temp.s
cp temp.s $ss
rm temp.s temp.ml swap.ml
