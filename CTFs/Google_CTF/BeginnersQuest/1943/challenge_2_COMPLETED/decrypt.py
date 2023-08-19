#!/bin/python

import base64

with open("cipher.txt", 'r') as f:
    cipher_bytes = base64.b64decode(f.read().strip())

key = b"CTF{MiniKey}"
keylength = len(key)

plain = ''.join(chr(byte ^ key[i % keylength]) for i, byte in enumerate(cipher_bytes))

print(plain)
