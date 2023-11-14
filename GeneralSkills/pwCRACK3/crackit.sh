#!/bin/bash


#pos_pw_list = ["6997", "3ac8", "f0ac", "4b17", "ec27", "4e66", "865e"]
#let's try to bruteforce using the given wordlist and this bash script
declare -a arr=("6997" "3ac8" "f0ac" "4b17" "ec27" "4e66" "865e")

for i in "${arr[@]}"
do
   python ./level3.py $i
done
