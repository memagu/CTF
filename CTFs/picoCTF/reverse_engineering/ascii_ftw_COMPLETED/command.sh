#!/bin/bash

xxd -s 0x1187 -l 121 -p asciiftw | tr -d \\n | sed -r 's/(..).{6}/\1/g' | xxd -r -p
