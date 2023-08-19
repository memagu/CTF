#!/bin/bash

python unpackme.flag_modified.py | grep -o "picoCTF{.*}"
