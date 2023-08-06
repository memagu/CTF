#!/bin/bash

echo "202752" | nc saturn.picoctf.net 64605 | grep -o "picoCTF{.*}"
