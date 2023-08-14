#!/bin/python

import argparse
import string
import sys

CHARCODE_A = 65
CHARCODE_a = 97
ALPHABET_LENGTH = 26


def generate_key_offset_map(key: str, mode: str) -> list[int]:
    assert(mode in ('e', 'd'))

    sign = 1 if mode == 'e' else -1

    return [(ord(char) - CHARCODE_A ) * sign for char in key.upper()]


def vingere_cipher(ciphertext: str, offset_map:list[int]) -> str:  # Encrypt/decrypt is decided by negative or positive values in offset map.
    result = ""
    offset_map_index = 0

    for char in ciphertext:
        if char not in string.ascii_letters:
            result += char
            continue

        char_offset = CHARCODE_A if char in string.ascii_uppercase else CHARCODE_a

        result += chr((ord(char) - char_offset + offset_map[offset_map_index % len(offset_map)]) % ALPHABET_LENGTH + char_offset)

        offset_map_index += 1

    return result


def main():
    argument_parser = argparse.ArgumentParser(
        prog="Vingere",
        description="A program for Vingere cipher encryption and decryption."
        )
    argument_parser.add_argument(
        "mode",
        type=str,
        choices=('e', 'd'),
        help="Specify mode (encrypt/decrypt)."
        )
    argument_parser.add_argument(
        "key",
        type=str,
        help="Key used for cipher."
        )
    
    args = argument_parser.parse_args()

    print(vingere_cipher(input(), generate_key_offset_map(args.key, args.mode)))


if __name__ == "__main__":
    main()