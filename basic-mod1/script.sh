FILE=$(cat ./message.txt)
alphabet=({A..Z})
decimal=({0..9})
for i in $(echo $FILE); do
  char=$(($i % 37))
  if [[ $char -ge 0 ]] && [[ $char -le 25 ]]
        then
              letter="${alphabet[$char]}"
                echo "$letter" >> decrypted_message.txt
    elif [[ $char -ge 26 ]] && [[ $char -le 35 ]]
    then
           digit="${decimal[$char-26]}"
           echo "$digit" >> decrypted_message.txt
    elif [[ $char == 36 ]]
    then
           echo "_" >> decrypted_message.txt
fi
done

message=$(cat decrypted_message.txt | tr -d "\n")
echo "picoCTF{$message}" >flag.txt