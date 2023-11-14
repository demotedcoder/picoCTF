#!/bin/bash

#in convertme.py modified the code a little bit:
#...import sys
#   print('Answer: ')
#   ans = sys.argv[1]
answer=$(echo "obase=2;25" | bc)
echo $answer
python ./convertme.py $answer