#!/bin/bash

exiftool cat.jpg | grep -oP "License\s*: \K.*" | base64 -d
