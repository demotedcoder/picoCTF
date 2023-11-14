#!/bin/bash
#convert a number from base 10 (decimal) to base 2 (binary)
res=`echo "obase=2;42" | bc`

echo "flag: picoCTF{$res}"