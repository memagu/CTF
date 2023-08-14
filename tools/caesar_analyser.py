#!/bin/python

import argparse
import string
import sys
from termcolor import colored
from typing import Optional

CHARCODE_A = 65
CHARCODE_a = 97
ALPHABET_LENGTH = 26


def analyse_caesar_cipher(ciphertext: str, target: Optional[str]):
    for rotation_offset in range(ALPHABET_LENGTH):
        plaintext = ""
        for char in ciphertext:
            if char in string.ascii_uppercase:
                plaintext += chr(((ord(char) - CHARCODE_A + rotation_offset) % ALPHABET_LENGTH) + CHARCODE_A)
                continue
    
            if char in string.ascii_lowercase:
                plaintext += chr(((ord(char) - CHARCODE_a + rotation_offset) % ALPHABET_LENGTH) + CHARCODE_a)
                continue
    
            plaintext += char

        out = f"{rotation_offset: <6}{plaintext}"
    
        if target is not None and target in plaintext:
            print(colored(out, "green"))
            continue

        print(out)


def main():
    argument_parser = argparse.ArgumentParser(
        prog="Caesar Analyser",
        description="A tool for analysing caesar ciphers."
        )
    argument_parser.add_argument(
        "-t",
        "--target-string",
        type=str,
        help="Specify a target string for easier identification of correct rotation offset."
        )
    argument_parser.add_argument(
        "-i",
        "--input-file",
        type=argparse.FileType('r'),
        default=sys.stdin,
        help="Specify a input file."
        )

    args = argument_parser.parse_args()
    print(args)

    analyse_caesar_cipher(args.input_file.read().strip(), args.target_string)

    if args.input_file is not sys.stdin:
        args.input_file.close()


if __name__ == "__main__":
    main()





