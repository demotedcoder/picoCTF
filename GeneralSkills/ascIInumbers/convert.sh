#!/bin/bash

#   convert these ascii numbers into readable string

INFILE=./ascii.txt

# Read the input file line by line
for LINE in $(cat $INFILE)
do
     echo $LINE | xxd -p -r
done