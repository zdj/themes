#!/bin/bash

cd iterm2
FILES=*
for f in $FILES
do
  touch ../colors/$f.json
  iterm-colors compile $f -p > ../colors/$f.json
done
cd ..
