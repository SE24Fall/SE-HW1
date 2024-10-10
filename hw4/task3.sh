#!/bin/bash
awk -F',' 'NR > 1 { if ($3 == 2 && substr($13, 1, 1) == "S") print $0 }' titanic.csv | 
sed 's/,male/,M/g; s/,female/,F/g' | tee temp.txt | 
awk -F',' '$7 != "" { total += $7; count++ } END { if (count > 0) print "Average Age:", total/count; else print "No valid passengers" }'
