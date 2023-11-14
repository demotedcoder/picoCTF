#!/bin/bash

# modified the file (out.txt) for the sake of this bash script
# in order to make it easier to fix the glitch
hex=""
for i in $(seq 2 9);do
hex=`cat out.txt | cut -d '+' -f $i`
ascii=`echo $hex | xxd -r -p`
res+=$ascii
done

echo "Flag is: picoCTF{gl17ch_m3_n07_$res}"