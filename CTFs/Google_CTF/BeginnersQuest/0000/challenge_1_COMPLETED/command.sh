#!/bin/bash

../../../../tools/vigenere.py d caesar < 0000challenge1.txt | grep -o "FLAG{.*}"
