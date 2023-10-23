#!/bin/bash

# $1 = filename (eg. enc_flag)
encodedStr=$(cat $1)

while [[ $encodedStr != *"picoCTF"* ]]
do
    encodedStr=$(echo $encodedStr | base64 -di)
done

echo "the flag is: $encodedStr"
