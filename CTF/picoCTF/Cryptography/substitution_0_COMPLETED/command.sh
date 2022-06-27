#!/bin/bash

cat message.txt | python substitution0.py | grep -aoE "picoCTF{.*?}" --color=none
