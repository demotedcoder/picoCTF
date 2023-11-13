#!/bin/bash

#             <filename>
res=$(strings strings | grep -oE picoCTF{.*})

echo "Flag is: $res"