#!/bin/bash

# use 'tr' - "translate"

tr '\t' ',' < file.tsv > file.csv

# use 'sed' - "stream editor"

sed 's/'$'\t''/,/g' file.tsv > file.csv

# Use 'awk' - "pattern scanning and processing language" 
awk 'BEGIN { FS="\t"; OFS="," } {$1=$1; print}' file.tsv > file.csv

