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
    """
    Takes either a string or a sequence of integers and calculates a transpositon order which it returns.

    Example
    key = "code"

    Each character in the key is pared with its index using enumerate -> (('c', 0), ('o', 1), ('d', 2), ('e', 3))
    The pairs are then sorted by the first item in each pair -> (('c', 0), ('d', 2), ('e', 3), ('o', 1))
    The second first item in each tuple is extracted and put into a list -> [0, 2, 3, 1]

    """
    return [t[0] for t in sorted(enumerate(key), key=itemgetter(1))]


def columnar_transposition(plaintext: str, key: str, padding:str = ''):
    """Perform columnar transpositon"""
    textlength = len(plaintext)
    keylength = len(key)

    # Add padding if the plaintext does not perfectly fill a rectangle with the same with as the key
    if textlength % keylength != 0:
        plaintext += padding * (keylength * ceildiv(textlength, keylength) - textlength)

    # A list of list representing each column, there are as many columns ans the key is wide.
    columns = [[] for _ in range(keylength)]

    # Go through all characters in the plaintext and put them in the columns row by row.
    for i, char in enumerate(plaintext):
        columns[i % keylength].append(char)

    # Join the chars in the columns and then join the columns accoring to the transposition order calculated from the key.
    return "".join("".join(columns[i]) for i in generate_transposition_order(key))


def columnar_untransposition(ciphertext: str, key: str):
    """Perform un-transposition undoing what columnar_transposition() performs"""
    textlength = len(ciphertext)
    keylength = len(key)

    columns = []
    transposition_order = generate_transposition_order(key)

    # Calculate row count
    rows = textlength // keylength

    # Calculate how many chars left after filling the rows
    additional_chars = textlength % keylength

    # Variable for keeping track of where to start picking characters from
    char_range_start = 0

    # for each column essentially.
    for i in range(keylength):
        # Calculate the end of the character picking range
        char_range_end = char_range_start + rows + (additional_chars > transposition_order[i])

        # Place those characters in a column.
        columns.append(ciphertext[char_range_start:char_range_end])

        # Set the start of the range for the next round to the end of this one
        char_range_start = char_range_end

    inverse_transposition_order = generate_transposition_order(transposition_order)

    result = []
    for row in range(rows + 1):
        for col in inverse_transposition_order:
            if row < len(columns[col]):
                result.append(columns[col][row])

    return "".join(result)


def debug():
    """A function that I used for debugging the transpostiton functions"""
    p = "Secretmessage"
    c = columnar_transposition(p, "code")
    print(c)
    print(generate_transposition_order("code"))
    print(columnar_untransposition(c, (1, 0, 0, 0)))


def main():
    # Make sure that the indices are correct
    assert('R' == PLAINTEXT_1[1] == PLAINTEXT_1[8] == PLAINTEXT_1[26] == PLAINTEXT_1[33] == PLAINTEXT_1[44])

    # Iterate through all possible permutations of the the numbers in the range 0-ENCRYPTION_COLUMNS (inclusive-exclusive)
    correct_transposition_key = None
    for transposition_key in itertools.permutations(range(ENCRYPTION_COLUMNS)):
        # untranspose both ciphers using the same key
        p1 = columnar_untransposition(CIPHERTEXT_1, transposition_key)
        p2 = columnar_untransposition(CIPHERTEXT_2, transposition_key)

        # If the untransposed text matches on the first 220 characters and that some indices share the same pair of characters, the key has been found.
        if p1[:220] == p2[:220] and p1[2:4] == p1[16:18] == p1[52:54] == p1[66:68] == p1[88:90]:
            correct_transposition_key = transposition_key

    print(f"Transposition key: {correct_transposition_key}")

    # Untranspose CIPHERTEXT_1 using the found key
    p1 = columnar_untransposition(CIPHERTEXT_1, correct_transposition_key)

    # Create a substitution map.
    # Split at every other index "GXAGGADXGGFXXX" -> "GX AG GA DX GG FX XX ..."
    # pair each pair with its corresponding letter in PLAINTEXT_1
    # "GX AG GA DX GG FX XX ..."
    # "F  R  O  M  G  E  N"
    # Save in a dictionary
    substitution_mapping = dict(zip((p1[i:i+2] for i in range(0, len(p1), 2)), PLAINTEXT_1))

    # Reformat and print as a string.
    print("Substitution key:", ''.join(t[1] for t in sorted(substitution_mapping)))
    
    # Untranspose CIPHERTEXT_3 (the "real" cipher in this task)
    p3 = columnar_untransposition(CIPHERTEXT_3, correct_transposition_key)

    # Loop over each pair of characters and translate the charaters using the substutiton map.
    plaintext_3 = ''.join(substitution_mapping[p3[i:i+2]] for i in range(0, len(p3), 2))

    print(f"Decrypted message: {plaintext_3}")


if __name__ == '__main__':
    main()
