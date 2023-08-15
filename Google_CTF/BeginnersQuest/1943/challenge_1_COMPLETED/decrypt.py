#!/bin/python

import base64


def xor_bytes(a: bytes, b: bytes) -> bytes:
    return bytes(x ^ y for x, y in zip(a, b))


def crib_drag(cipher: bytes, crib: bytes) -> list[str]:
    result = []
    for i in range(len(cipher) - len(crib) + 1):
        try:
            xored = xor_bytes(cipher[i:i+len(crib)], crib).decode()
            if xored.isprintable():
                result.append(xored)
        except UnicodeDecodeError:
            pass
    return result


def main():
    with open("ciphers.txt", "r") as f:
        ciphers = [base64.b64decode(line.strip()) for line in f.readlines()]

    xored_ciphers = xor_bytes(ciphers[2], ciphers[1])

    guess_0 = " their nuclear weApons technology. CTF{MultiTimePadIsUnbreakable}"
    guess_1 = ", Sidney Rilley. fortunately, multi-time pad is truly unbreakable"
    guess_2 = "They can't know tHat we use multi-time pad. In paritcular, Sidney"
    guess_bytes = bytes(guess_2, "utf-8")

    a = crib_drag(xored_ciphers, guess_bytes)
    print(*a, sep="\n")

if __name__ == '__main__':
    main()