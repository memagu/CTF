#!/bin/bash

./get_pass.py | python level3.py | grep -o "picoCTF{.*}"
