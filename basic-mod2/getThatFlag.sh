#!/bin/bash

FILE=$(cat ./message.txt)
alphabet=(' ' {A..Z})
decimal=({0..9})
for i in $(echo $FILE); do
char=$i
mod=41
    for ((x = 1; x < mod; x++)); do
        if (((char % mod) * (x % mod) % mod == 1)); then
            if [[ $x -ge 1 ]] && [[ $x -le 26 ]];then
                    letter="${alphabet[$x]}"
                    echo "$letter" >> decrypted_message.txt
            elif [[ $x -ge 27 ]] && [[ $x -le 36 ]];then
                    digit="${decimal[$x-27]}"
                    echo "$digit" >> decrypted_message.txt
            elif [[ $x == 37 ]];then
                    echo "_" >> decrypted_message.txt
            fi
        fi
    done
done

message=$(cat decrypted_message.txt | tr -d "\n")
echo "picoCTF{$message}" >flag.txt