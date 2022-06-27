import string


upper = string.ascii_uppercase
lower = string.ascii_lowercase

input_string = input("Enter string: ")
target_string = input("Input target string: ")
# s = "cvpbPGS{P7e1S_54I35_71Z3}"

for i in range(0, 26):
    out = ""
    for char in input_string:
        if char in upper:
            out += chr(((ord(char) - 65 + i) % 26) + 65)
            continue

        if char in lower:
            out += chr(((ord(char) - 97 + i) % 26) + 97)
            continue

        out += char

    if target_string and target_string in out:
        print(f"\033[92m{i}.\t{out}\033[0m")
        continue

    print(f"{i}.\t{out}")






