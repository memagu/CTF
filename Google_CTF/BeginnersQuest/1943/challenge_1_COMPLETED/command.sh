#!/bin/bash

./decrypt.py | grep -o "CTF{.*}"
