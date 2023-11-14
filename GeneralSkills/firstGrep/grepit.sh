#!/bin/bash



#        <filename>
res=$(cat file | grep -oE picoCTF{.*})
#alternative way: res=$(grep -oE picoCTF{.*} file)
echo "Flag is: $res"