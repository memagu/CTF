#!/bin/bash

echo "happychance" | python bloat.flag.py | grep -E  "pico" --color=none
