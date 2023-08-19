#!/bin/bash

echo -e "$(cat message.txt)\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nn\n4\nq" | python transposition_trial.py | grep -aoE "picoCTF{.*?}" --color=none | tail -n 1
