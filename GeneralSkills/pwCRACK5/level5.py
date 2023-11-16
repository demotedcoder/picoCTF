import hashlib

# added a function crackIt() in order to bruteforce the passwd and eventually get the flag
# also used strip() method to remove any leading or trailing whitespaces
# ofc you can put it in another script and try to crack the program from there


def str_xor(secret, key):
    # extend key to secret length
    new_key = key
    i = 0
    while len(new_key) < len(secret):
        new_key = new_key + key[i]
        i = (i + 1) % len(key)
    return "".join([chr(ord(secret_c) ^ ord(new_key_c)) for (secret_c, new_key_c) in zip(secret, new_key)])


flag_enc = open('level5.flag.txt.enc', 'rb').read()
correct_pw_hash = open('level5.hash.bin', 'rb').read()


def hash_pw(pw_str):
    pw_bytes = bytearray()
    pw_bytes.extend(pw_str.encode())
    m = hashlib.md5()
    m.update(pw_bytes)
    return m.digest()


def crackIt(wordlist):
    try:
        with open(wordlist, 'r') as file:
            for line in file:
                stripped_line = line.strip()
                user_pw_hash = hash_pw(stripped_line)
                if (user_pw_hash == correct_pw_hash):
                    print("Welcome back... your flag, user:")
                    decryption = str_xor(flag_enc.decode(), stripped_line)
                    print(decryption)
                    return
    except FileNotFoundError:
        print(f"File not found: {wordlist}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")

# def level_5_pw_check():
#     user_pw = input("Please enter correct password for flag: ")
#     user_pw_hash = hash_pw(user_pw)

#     if (user_pw_hash == correct_pw_hash):
#         print("Welcome back... your flag, user:")
#         decryption = str_xor(flag_enc.decode(), user_pw)
#         print(decryption)
#         return
#     print("That password is incorrect")


if __name__ == "__main__":
    wordlist_file = "./dictionary.txt"
    crackIt(wordlist_file)
