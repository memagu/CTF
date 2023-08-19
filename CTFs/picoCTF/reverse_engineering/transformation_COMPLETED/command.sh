#!/bin/bash

python transformation.py | grep -aoE "picoCTF{.*?}" --color=none
