#!/bin/bash

echo -e "$(cat message.txt)\nzdifIECqoajqfuecfuixzelusrykhn=picoCTFhlgshortforcapturemndwq" | python ../../../tools/frequenzy_analyser_en.py | grep -aoE "picoCTF{.*?}" --color=none
