#!/bin/bash

dataset_dir="dataset1"

find "$dataset_dir" -type f -name "file_*" | \
xargs grep -l "sample" | \
xargs grep -o "CSC510" | \
sort | uniq -c | \
awk '$1 >= 3 {print $2}' | \
xargs -I {} sh -c 'echo "{}" $(wc -c < "{}")' | \
sort -k2,2nr -k1,1 | \
awk '{gsub("file_", "filtered_", $1); print $1}'

