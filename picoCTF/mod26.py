import string

s = "cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_MAZyqFQj}"
lower = string.ascii_lowercase
upper = string.ascii_uppercase
letters = lower + upper

new_s = ""

for char in s:
    if char not in letters:
        new_s += char
        continue
    if char in lower:
        new_s += chr(((ord(char) - 97 + 13) % 26) + 97)
        continue

    new_s += chr(((ord(char) - 65 + 13) % 26) + 65)

print(new_s)
