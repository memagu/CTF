#!/bin/bash

echo -e "cvpbPGS{arkg_gvzr_V'yy_gel_2_ebhaqf_bs_ebg13_MAZyqFQj}\n\n" | python ../../../tools/caesar_analyser.py | grep -aoE "picoCTF{.*?}" --color=none
