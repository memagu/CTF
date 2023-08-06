#!/bin/bash

strings drawing.flag.svg | grep -oP "(?<=>).*(?=</tspan>)" | tr -d "[:space:]"
