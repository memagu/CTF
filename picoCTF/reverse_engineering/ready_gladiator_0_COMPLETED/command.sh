#!/bin/bash

nc saturn.picoctf.net 57915 < warrior.red | grep -o "picoCTF{.*}"
