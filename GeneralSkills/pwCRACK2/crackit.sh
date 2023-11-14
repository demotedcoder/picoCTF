#!/bin/bash

#    if( user_pw == chr(0x33) + chr(0x39) + chr(0x63) + chr(0x65) ):

pass=`echo 33 | xxd -r -p`
pass+=`echo 39 | xxd -r -p`
pass+=`echo 63 | xxd -r -p`
pass+=`echo 65 | xxd -r -p`
python ./level2.py $pass