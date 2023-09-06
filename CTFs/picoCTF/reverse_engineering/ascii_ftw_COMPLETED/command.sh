#!/bin/bash

xxd -s 0x1187 -l 121 -p asciiftw | tr -d \\n | python -c "hex_data = input(); print(bytes.fromhex(''.join(hex_data[i:i + 2] for i in range(0, len(hex_data), 8))).decode())"
