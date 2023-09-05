#!/bin/bash

./get_pass.py | python level4.py | grep -o "picoCTF{.*}"
