#!/bin/bash

./get_pass.py | python level5.py | grep -o "picoCTF{.*}"
