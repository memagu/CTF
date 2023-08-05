#!/bin/python

# https://en.wikipedia.org/wiki/Rail_fence_cipher

from collections import deque
from functools import reduce
import string
import sys

def generate_zigzag_indices(length: int, rail_count: int) -> list[int]:
	rails = [[] for _ in range(rail_count)]
	gaps = rail_count - 1

	rail = 0
	direction = 1

	for i in range(length):
		rails[rail].append(i)
		rail += direction

		if rail == 0 or rail == gaps:
			direction *= -1

	return reduce(lambda x, y: x.extend(y) or x, rails, [])


def encrypt(plaintext: str, rail_count: int) -> str:
	result = []

	for i in generate_zigzag_indices(len(plaintext), rail_count):
		result.append(plaintext[i])

	return ''.join(result)


def decrypt(ciphertext: str, rail_count: int) -> str:
	result = [''] * len(ciphertext)

	for i, char in zip(generate_zigzag_indices(len(ciphertext), rail_count), ciphertext):
		result[i] = char

	return ''.join(result)


def main():
	assert(len(sys.argv) == 3)

	rail_count = int(sys.argv[1])
	mode = sys.argv[2]

	assert(mode in ("-e", "-d"))

	text = input().strip()

	if mode == "-e":
		print(encrypt(text, rail_count))
		return


	if mode == "-d":
		print(decrypt(text, rail_count))


if __name__ == "__main__":
	main()