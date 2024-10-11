#!/bin/bash

cat titanic.csv | sed 's/,male/,M/ ; s/,female/,F/ ; s/\r$// ;' | grep -E 'S$' |  gawk -F, '$3 == 2 { print $0 } $7 != "" && $3 == 2 { total += $7; count++ } END { print "Average age:" total / count }'