#!/bin/python

import hashlib
import socket

FLAG_PREFIX = "picoCTF{"

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("saturn.picoctf.net", 53638))

while True:
    line = s.recv(1024).decode().strip()

    if FLAG_PREFIX in line:
        print(line)
        break

    start = line.find("'") + 1
    end = line.rfind("'")

    answer = hashlib.md5(line[start:end].encode()).hexdigest() + '\n'
    s.send(answer.encode())

    s.recv(1024)
