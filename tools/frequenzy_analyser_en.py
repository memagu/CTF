#!/bin/python

import string


ETAOI = "ETAOINSRDHLUCMFYWGPBVKXQJZ"
letter_frequencies = {"E": 0.1202,
                      "T": 0.0910,
                      "A": 0.0812,
                      "O": 0.0768,
                      "I": 0.0731,
                      "N": 0.0695,
                      "S": 0.0628,
                      "R": 0.0602,
                      "D": 0.0592,
                      "H": 0.0432,
                      "L": 0.0398,
                      "U": 0.0288,
                      "C": 0.0271,
                      "M": 0.0261,
                      "F": 0.0230,
                      "Y": 0.0211,
                      "W": 0.0209,
                      "G": 0.0203,
                      "P": 0.0182,
                      "B": 0.0149,
                      "V": 0.0111,
                      "K": 0.0069,
                      "X": 0.0017,
                      "Q": 0.0011,
                      "J": 0.0010,
                      "Z": 0.0007}

cipher_text = input("Input cipher text: ")
known_mapping = zip(*input("Input any known mapping (xgh=abc): ").upper().split("="))

occurrences = [[letter, 0] for letter in string.ascii_uppercase]
for char in cipher_text:
    if char.upper() in string.ascii_uppercase:
        occurrences[ord(char.upper())-65][1] += 1

occurrences.sort(key=lambda x: x[1], reverse=True)

collisions = [pair for pair in occurrences if pair[1] in [pair2[1] for pair2 in occurrences if pair[0] != pair2[0]]]
print(collisions)

mapping = {cipher_letter: letter for cipher_letter, letter in zip([pair[0] for pair in occurrences], ETAOI)}
if known_mapping:
    for map_from, map_to in known_mapping:
        mapping[map_from.upper()] = map_to.upper()

print()
print(f"{occurrences=}")
print(f"{collisions=}")
print(f"{mapping=}")
print()

for char in cipher_text:
    if char in string.ascii_uppercase:
        print(mapping[char], end="")
        continue

    if char in string.ascii_lowercase:
        print(mapping[char.upper()].lower(), end="")
        continue

    print(char, end="")