#!/bin/python

import hashlib

with open("dictionary.txt", 'r') as f:
    possible_passwords = [line.strip() for line in f.readlines()]

with open("level5.hash.bin", "rb") as f:
    password_hash = f.read()

for password in possible_passwords:
    if hashlib.md5(password.encode()).digest() == password_hash:
        print(password)
        break