import string
import fileinput

substitution_map = "EKSZJTCMXOQUDYLFABGPHNRVIW"

translate = dict(zip(substitution_map + substitution_map.lower(), string.ascii_uppercase + string.ascii_lowercase))

for line in fileinput.input():
    for char in line:
        if char in translate:
            print(translate[char], end="")
        else:
            print(char, end="")