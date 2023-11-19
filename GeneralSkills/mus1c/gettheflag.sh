#!/bin/bash

lines=$(cat out.txt | wc -w)
for i in $(seq 1 $lines);do
    ascii=$(cat out.txt | tr "\n" " " | cut -d " " -f $i)
    value=$(printf "\x$(printf %x $ascii)")
    res+=$value
done
echo "The flag is: picoCTF{$res}"