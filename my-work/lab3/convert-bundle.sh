#!/bin/bash

# Downloading the tarball using curl
curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# Extract the tarball
tar -xzf lab3-bundle.tar.gz

# Removing empty rows
cat lab3_data.tsv | tr -s '\n' > my_new_file.tsv

# Converting TSV to CSV
tr '\t' ',' < my_new_file.tsv > file.csv

# Counting lines
ROW_COUNT=$(wc -l < my_new_file.tsv)
COUNT_LINES=$((ROW_COUNT - 1))

echo "Number of lines: $COUNT_LINES"

# Creating a new tar with the changes
tar -czf converted-archive.tar.gz my_new_file.tsv


