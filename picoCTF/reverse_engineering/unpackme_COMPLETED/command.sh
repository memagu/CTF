#!/bin/bash

echo "754635" | ./unpackme | grep -o "picoCTF{.*}"
