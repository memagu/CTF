#!/bin/python

import base64


with open("key.txt", 'r') as f:
    key = f.read()

key = base64.b64decode(key).decode(encoding="latin-1")


print(key)
