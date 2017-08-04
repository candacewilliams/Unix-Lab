#!/bin/bash

# Task:

# Write a script that accepts random words in a user supplied file and creates user named file containing the use words A-Z sorted order 


# Example:

# File data.txt containing the words {Cat, Zipper, Virtual, Apple}

# File “sortedwords.txt’ to contain sorted words

# execution
#   sh yourscript data.txt sortedwords.txt

# Results

#    sortedwords.txt contains {Apple, Cat, Virtual, Zipper}

X=$(cat $1)

if [ -f $1 ]; then 
  echo "" > new_file
  for word in $X; do
	echo $word >> new_file
  done
  sort new_file > sorted_file
  rm new_file
fi
