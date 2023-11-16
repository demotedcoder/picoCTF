#!/bin/bash


unzip ./big-zip-files.zip > /dev/null

grep -R picoCTF > flag.txt
clear


cat flag.txt | grep -oE picoCTF{.*}