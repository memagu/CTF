#!/bin/python

import string
import math


charset = string.ascii_uppercase

table = []
for row in range(len(charset)):
	table.append([])
	for col in range(len(charset)):
		table[row].append(charset[(row + col) % len(charset)])


def encrypt(plaintext: str, key: str) -> str:
	keystream = (key.upper() * math.ceil(len(plaintext) / len(key)))[:len(plaintext)]
	result = ""
	i = 0
	for char in plaintext:
		if char not in string.ascii_letters:
			result += char
			continue
		do_lower = False
		if char in string.ascii_lowercase:
			do_lower = True

		char = char.upper()

		row = ord(char) - 65
		col = ord(keystream[i]) - 65

		i += 1

		if not do_lower:
			result += table[row][col]
			continue
		result += table[row][col].lower()

	return result


def decrypt(ciphertext: str, key: str) -> str:
	keystream = (key.upper() * math.ceil(len(ciphertext) / len(key)))[:len(ciphertext)]
	result = ""
	i = 0
	for char in ciphertext:
		if char not in string.ascii_letters:
			result += char
			continue

		do_lower = False
		if char in string.ascii_lowercase:
			do_lower = True

		char = char.upper()

		row = ord(keystream[i]) - 65
		col = table[row].index(char)

		i += 1

		if not do_lower:
			result += table[0][col]
			continue
		result += table[0][col].lower()

	return result


method = ""
while True:
	method = input("Enter method (\u001b[32me\u001b[mncrypt/\u001b[32md\u001b[mecrypt): ")
	if method in ["e", "d"]:
		break
	print("Invalid indput!")

key = input("Enter key: ")

if method == "e":
	print(encrypt(input("Enter plaintext: "), key))

else:
	print(decrypt(input("Enter ciphertext: "), key))
