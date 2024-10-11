#!/bin/bash

grep -l "sample" dataset1/file* | xargs grep -o "CSC510" | sort | uniq -c | grep -E '^[ ]3'|cut -d: -f1 | sed 's/^[ ]//;s/ *CSC510//' |
           

grep -l "sample" dataset1/file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | wc -l); size=$(stat -f %z {}); echo "$count {} $size" ' | awk '$1 >= 3 {print $0}' | sort -k1,1nr -k3,3n |


grep -l "sample" dataset1/file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" {} | wc -l); size=$(stat -f %z {}); echo "$count {} $size" ' | awk '$1 >= 3 {print $0}' | sort -k1,1nr -k3,3n |sed 's/file_/filtered_/g' 