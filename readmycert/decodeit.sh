#!/bin/bash

# $1 = eg. readmycert.csr ||  ./decodeit.sh readmycert.csr
flag=$(openssl req -in readmycert.csr -noout -text | grep pico | cut -d "=" -f 2 | cut -d "," -f 1 | tr -d " ")

echo -e "The flag is: \n$flag"