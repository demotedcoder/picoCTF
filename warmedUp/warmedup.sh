#!/bin/bash

#we basically have to convert a base 16 to decimal (base10)
res=$(echo $((0x3D)))
echo "Flag: picoCTF{$res}"