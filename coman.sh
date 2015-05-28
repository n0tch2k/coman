#!/bin/bash
INPUT=movies.csv
OLDIFS=$IFS
IFS=,
width=49
divider===============================
divider=$divider$divider

# structure:
# print csv files in current dir, ask for seelction
# read first line of csv for table-header information
# use tput columns for terminal width and fancy layout
# implement add, remove, edit, sort functions
# add export to html, pdf and md?
# dynamic web view?

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

printf '%4s | %20s | %10s | %3s\n' "Year" "Title" "Genre" "Rating"
printf "%$width.${width}s\n" "$divider"

while read year title genre rating
do

  printf '%4d | %20s | %10s | %6g\n' $year $title $genre $rating

done < $INPUT
IFS=$OLDIFS
