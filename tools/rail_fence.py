#!/bin/python

# https://en.wikipedia.org/wiki/Rail_fence_cipher

from collections import deque
import string
import sys


def encrypt(plaintext: str, rail_count: int = 3) -> str:
	rails = [''] * rail_count
	gaps = rail_count - 1

	rail = 0
	direction = 1

	for char in plaintext:
		if char not in string.ascii_letters:
			continue

		rails[rail] += char
		rail += direction

		if rail == 0 or rail == gaps:
			direction *= -1

	return ' '.join(rails)



def decrypt(ciphertext: str) -> str:
	rails = [deque(rail) for rail in ciphertext.split()]
	gaps = len(rails) - 1

	result = ""
	rail = 0
	direction = -1

	for i in range(len(ciphertext) - gaps):
		if not i % gaps:
			direction *= -1

		result += rails[rail].popleft()
		rail += direction

	return result


def main():
	assert(len(sys.argv) in (2, 4))

	mode = sys.argv[1]

	assert(mode in ("-e", "-d"))

	text = input().strip()

	if mode == "-e":
		if not len(sys.argv) == 4:
			print(encrypt(text))
			return

		assert(sys.argv[2] == '-r')
		rails = int(sys.argv[3])
		print(encrypt(text, rails))
		return


	if mode == "-d":
		print(decrypt(text))


if __name__ == "__main__":
	main()