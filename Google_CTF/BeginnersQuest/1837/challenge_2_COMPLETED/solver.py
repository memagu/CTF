#!/bin/python

import itertools
from operator import itemgetter
from typing import Sequence

CIPHERTEXT_1 = "GXAGGAVXGXAVDXFXVAFDFVGXVXGXDDFGXGDFGXFXFXGFDFDFDXVFXFGXVAGGVXGGFXDDAAGDDVVXVGVVXAADVDFXGGDGGVVVDXXVDVAFAXFXGADFGFFADAXFVAFFXDFFGGADGXAFVGVXDGAXFVDDGXAGXAXXXDGDXAFFAFVFAGVGAGGGAGAADGDFGFXXXXGVXDXGFAXXFAXAGDGDXVXDXVFAFAGAXXXGVGFGVGFDADXXVAAXFDFAFAAXGDVVFFGGAVVXGXFGFAAGXAGGAX"
CIPHERTEXT_2 = "GXAGGAVXGXAVDXFXVAFDFVGXVXGXDDFFGAADGGDGXAGGAXXFXGFDFDFDXVFXFGXVAGGVXGGFXDDAAVXAXFDGDXGDFGXFVVXAADVDFXGGDGGVVVDXXVDVAFAXFXGFXFAXGAVAGXAXXXAXFVAFFXDFFGGADGXAFVGVXDGAXFVDDGFXAFAFXVGFDADXDGDXAFFAFVFAGVGAGGGAGAADGDFGFXXXDGGAGGXGDVVXVGFAXXFAXAGDGDXVXDXVFAFAGAXXXGVGFGXGFDAGVAGVXDXGXVAAXFDFAFAAXGDVVFFGGAVVXGXFGFAGVAFFXAADFGFFAD"
CIPHERTEXT_3 = "GXAGGADXGGFXXXFGDDGXAGFXFAVGFXDVAVAGFGXFXGFDFDFGVGFXGFXAVXVGXVADXGVGXXXVGAVDXVVXAADVDFXDDFVGXXDGXGGGFAXFXDDGDGDXGDAAXFVAFFXDFFGFAGXGXGGDFFXVAVXFGFXGXAVDGXDGDXAFFAFVVDDAXXVXVFVXDXDGXGVDXFFFGAVAFFAXXFAXAGDXFXDXVXFXGADXVVGVXXFXGDGAAFAVXVAAXFFFADDAAVDDAAXFFDDGDGVDDAGAFAFFDV"
PLAINTEXT_1 = "FROMGENERALSTAFFOFFICE12MARCH1918REPEATINGOURINSTRUCTIONSON07031918ABOUTPLANVWXYZDONOTMAKEUSEOFTRENCHCODE456TOTALKWITHJUNIORQUARTERMASTER"
PLAINTEXT_2 = "FROMGENERALSTAFFOFFICE12MARCH1918REPEATINGOURINSTRUCTIONSON07031918ABOUTPLANVWXYZDONOTMAKEUSEOFTRENCHCODE456TOQUERYSTAFFOFFICEABOUTTALKINGWITHJUNIORQUARTERMASTER"
ENCRYPTION_COLUMNS = 7


def ceildiv(a, b):
    return -(a // -b)


def generate_transposition_order(key: str | Sequence[int]) -> list[int]:
    return [t[0] for t in sorted(enumerate(key), key=itemgetter(1))]


def columnar_transposition(plaintext: str, key: str, padding:str = ''):
    textlength = len(plaintext)
    keylength = len(key)

    if textlength % keylength != 0:
        plaintext += padding * (keylength * ceildiv(textlength, keylength) - textlength)

    columns = [[] for _ in range(keylength)]
    for i, char in enumerate(plaintext):
        columns[i % keylength].append(char)

    return "".join("".join(columns[i]) for i in generate_transposition_order(key))


def columnar_untransposition(ciphertext: str, key: str):
    textlength = len(ciphertext)
    keylength = len(key)

    columns = []
    transposition_order = generate_transposition_order(key)

    rows = textlength // keylength
    additional_chars = textlength % keylength
    char_range_start = 0

    for i in range(keylength):
        char_range_end = char_range_start + rows + (additional_chars > transposition_order[i])
        columns.append(ciphertext[char_range_start:char_range_end])
        char_range_start = char_range_end

    inverse_transposition_order = generate_transposition_order(transposition_order)

    result = []
    for row in range(rows + 1):
        for col in inverse_transposition_order:
            if row < len(columns[col]):
                result.append(columns[col][row])

    return "".join(result)


def debug():
    p = "Secretmessage"
    c = columnar_transposition(p, "code")
    print(c)
    print(generate_transposition_order("code"))
    print(columnar_untransposition(c, (1, 0, 0, 0)))


def main():
    assert('R' == PLAINTEXT_1[1] == PLAINTEXT_1[8] == PLAINTEXT_1[26] == PLAINTEXT_1[33] == PLAINTEXT_1[44])

    correct_transposition_key = tuple()
    for transposition_key in itertools.permutations(range(ENCRYPTION_COLUMNS)):
        p1 = columnar_untransposition(CIPHERTEXT_1, transposition_key)
        p2 = columnar_untransposition(CIPHERTEXT_2, transposition_key)

        if p1[:220] == p2[:220] and p1[2:4] == p1[16:18] == p1[52:54] == p1[66:68] == p1[88:90]:
            correct_transposition_key = transposition_key

    print(f"Transposition key: {correct_transposition_key}")

    p1 = columnar_untransposition(CIPHERTEXT_1, correct_transposition_key)

    substitution_mapping = dict(zip((p1[i:i+2] for i in range(0, len(p1), 2)), PLAINTEXT_1))
    print("Substitution key:", ''.join(t[1] for t in sorted(substitution_mapping)))
    
    p3 = columnar_untransposition(CIPHERTEXT_3, correct_transposition_key)

    plaintext_3 = ''.join(substitution_mapping[p3[i:i+2]] for i in range(0, len(p3), 2))

    print(f"Decrypted message: {plaintext_3}")


if __name__ == '__main__':
    main()