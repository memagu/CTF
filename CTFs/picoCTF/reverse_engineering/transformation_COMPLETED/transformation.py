encoded = "灩捯䍔䙻ㄶ形楴獟楮獴㌴摟潦弸弰㑣〷㘰摽"

import string
chars = string.printable

print(chars)

decoded = ""

for char in encoded:
    do = True
    for char1 in chars:
        if not do:
            break
        for char2 in chars:
            if char2 == char1:
                continue
            if (ord(char1) << 8) + ord(char2) == ord(char):
                decoded += char1 + char2
                do = False
                break

print(decoded)