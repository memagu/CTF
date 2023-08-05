#!/bin/bash

echo "picoCTF{$(cat message.txt | ../../../tools/rail_fence.py 4 -d | grep -oP 'The flag is: \K.*')}"
