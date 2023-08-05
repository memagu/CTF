#!/bin/bash

echo "picoCTF$(echo -e "$(cat ciphertext)\n" | python ../../../tools/caesar_analyser.py | grep -a 22 | cut -b  12-)"
