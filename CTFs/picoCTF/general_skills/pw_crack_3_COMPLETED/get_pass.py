#!/bin/python

import hashlib

possible_passwords = ["6997", "3ac8", "f0ac", "4b17", "ec27", "4e66", "865e"]

with open("level3.hash.bin", "rb") as f:
    password_hash = f.read()

for password in possible_passwords:
    if hashlib.md5(password.encode()).digest() == password_hash:
        print(password)
        break