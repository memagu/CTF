#!/bin/bash

./home/ctf-player/drop-in/decrypt.sh $(sha256sum ./home/ctf-player/drop-in/files/* | grep $(cat ./home/ctf-player/drop-in/checksum.txt) | awk '{print $2}')
