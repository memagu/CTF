#!/bin/bash

../../../../tools/caesar_analyser.py -t FLAG -i 0000challenge0.txt | grep -o "FLAG{.*}"
