#!/bin/bash

res=`echo "bDNhcm5fdGgzX3IwcDM1" | base64 -d`
echo "Flag is: picoCTF{$res}"