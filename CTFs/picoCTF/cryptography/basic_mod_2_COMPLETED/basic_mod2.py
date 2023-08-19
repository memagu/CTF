import string

charset = string.ascii_uppercase + string.digits + "_"

for char in map(int, input().split()):
    print(charset[pow(char, -1, 41) - 1], end="")