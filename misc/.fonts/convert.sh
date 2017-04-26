#!/bin/bash
FILES="$HOME/.fonts/"
shopt -s nullglob
for f in $FILES*.bdf
do
  echo "Processing $f file..."
  output=${f%.bdf}
  bdftopcf -o $output.pcf $f
  rm -rf $f
done
sudo mkfontscale
sudo mkfontdir
xset +fp $FILES
xset fp rehash
fc-cache
