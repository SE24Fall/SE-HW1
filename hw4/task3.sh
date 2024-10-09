#!/bin/bash

csv_file="titanic.csv"

awk -F, '$3 == 2 && $12 == "S" {print $0}' "$csv_file" | \
awk -F, '{gsub("male", "M", $5); gsub("female", "F", $5); print $0}' | \
awk -F, '{if ($6 != "") age_sum += $6; count++} END {if (count > 0) print "Average Age:", age_sum / count; else print "No age data."}'

