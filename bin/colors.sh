#!/bin/bash

FILES=iterm/*
for f in $FILES
do
  touch colors/$f.json
  echo `iterm-colors compile -p $f` | json_reformat >> colors/$f.json
done
