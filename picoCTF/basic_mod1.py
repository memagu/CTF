import string

charset = string.ascii_uppercase + string.digits + "_"

for char in map(int, input().split()):
    print(charset[char % 37], end="")
