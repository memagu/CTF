#!/bin/bash

echo "picoCTF{$(python ./public/encrypt_modified.py | tail -n -2 | head -n 1)}"
