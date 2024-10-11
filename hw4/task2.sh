#!/bin/bash

grep -l "sample" dataset1/file* | 
xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | wc -l); if [ $count -ge 3 ]; then echo "{} has $count occurrences of CSC510"; fi' && grep -l "sample" dataset1/file* | 
xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | wc -l); if [ $count -ge 3 ]; then echo "{} $count"; fi' | 
xargs -I {} sh -c 'file_name=$(echo {} | cut -d" " -f1); count=$(echo {} | cut -d" " -f2); size=$(stat -f %z $file_name); echo "$count $file_name $size"' | 
sort -k1,1nr -k3,3n | sed 's/file_/filtered_/g'
