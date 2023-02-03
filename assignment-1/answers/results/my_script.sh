#!/usr/bin/env bash

tsv="${1/.csv/.tsv}"

sed "s/,/\t/g" $1 > $tsv

awk -F '\t' '{print $1}' $tsv
