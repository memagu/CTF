#!/bin/bash

echo -e "$(cat message.txt)\nzdifIECqoajqfuecfuixzelusrykh=picoCTFhlgshortforcapturemndw" | python ../../../tools/frequenzy_analyser_en.py | grep -aoE "picoCTF{.*?}" --color=none
