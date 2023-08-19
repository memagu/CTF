#!/bin/python

import base64
from itertools import combinations
from typing import Iterable


def xor(a: bytes, b: bytes) -> bytes:
    return bytes(x ^ y for x, y in zip(a, b))


def crib_drag(a: bytes, b: bytes, crib: str) -> list[str]:
    crib = bytes(crib, encoding="ASCII")
    xored = xor(a, b)
    return [result for i in range(len(a) - len(crib) + 1) if
            (result := xor(xored[i:i + len(crib)], crib).decode("ASCII", errors="ignore")).isprintable()]


def crib_drag_all(ciphers: Iterable[bytes], crib: str) -> list[tuple[int, int, list[str]]]:
    return [(i, j, crib_drag(cipher_a, cipher_b, crib)) for (i, cipher_a), (j, cipher_b) in
            combinations(enumerate(ciphers), 2)]


def main():
    with open("ciphers.txt", "r") as f:
        ciphers = [base64.b64decode(line.strip()) for line in f.readlines()]

    crib_0 = " their nuclear weApons technology. CTF{MultiTimePadIsUnbreakable}"
    crib_1 = ", Sidney Rilley. fortunately, multi-time pad is truly unbreakable"
    crib_2 = "They can't know tHat we use multi-time pad. In paritcular, Sidney"

    for i, j, results in crib_drag_all(ciphers, crib_1):
        if not results:
            continue

        print(f"Cipher {i} and {j} with crib: '{crib_1}' produced the following, printable only, strings:")
        print('\n'.join(results), end="\n\n")


if __name__ == '__main__':
    main()
