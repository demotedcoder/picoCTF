#!/bin/bash


grep -R picoCTF ./files > flag.txt
cat flag.txt | grep -oE picoCTF{.*}