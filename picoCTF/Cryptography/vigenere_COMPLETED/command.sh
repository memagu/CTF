#!/bin/bash

echo -e "$(cat cipher.txt)\nd\ncylab\nrgnoDVD{O0NU_WQ3_G1G3O3T3_A1AH3S_cc82272b}\n" | python vigenere.py | grep -aoE "picoCTF{.*?}" --color=none
