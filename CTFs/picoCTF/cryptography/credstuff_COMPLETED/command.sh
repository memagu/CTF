#!/bin/bash

sed -n $(grep -n "cultiris" ./leak/usernames.txt | cut -f 1 -d ':')p ./leak/passwords.txt | tr "A-Za-z" "N-ZA-Mn-za-m"
