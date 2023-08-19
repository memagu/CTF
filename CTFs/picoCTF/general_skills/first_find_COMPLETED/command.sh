#!/bin/bash

grep -raoE "picoCTF{.*?}" files | cut -b 88-
