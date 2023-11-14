#!/bin/bash

while read word; do
  python ./level4.py $word >> out.txt
done < wordlist.txt

echo "The flag is:"
grep -oE picoCTF{.*} out.txt