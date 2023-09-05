#!/bin/python

RAW_DATA = "$D3,$D4,$C1,$CE,$C4,$C1,$D2,$C4,$DF,$C3,$CF,$C4,$C5,$DF,$C6,$CF,$D2,$DF,$C9,$CE,$C6,$CF,$D2,$CD,$C1,$D4,$C9,$CF,$CE,$DF,$C9,$CE,$D4,$C5,$D2,$C3,$C8,$C1,$CE,$C7,$C5"
SHIFT = 0x80

flag = "FLAG{" + "".join(map(lambda s: chr(int(s[1:], 16) - SHIFT), RAW_DATA.split(','))) + '}'

print(flag)