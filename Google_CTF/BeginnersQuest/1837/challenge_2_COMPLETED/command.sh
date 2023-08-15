#!/bin/bash

./solver.py | grep -oP "FLAG\K.*"
