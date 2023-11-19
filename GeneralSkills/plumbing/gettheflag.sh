#!/bin/bash


# $1 = host ;; $2 = port
nc $1 $2 | grep -oE picoCTF{.*}