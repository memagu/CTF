#!/bin/bash

echo "picoCTF{$(grep -oP 'encodedkey = "\K[A-Za-z0-9+/]+' SafeOpener.java | base64 -d)}"\n
