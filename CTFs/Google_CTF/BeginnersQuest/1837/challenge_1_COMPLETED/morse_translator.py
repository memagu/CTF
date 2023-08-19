#!/bin/python

international_morse_code = {
    ".-": 'A',
    "-...": 'B',
    "-.-.": 'C',
    "-..": 'D',
    ".": 'E',
    "..-.": 'F',
    "--.": 'G',
    "....": 'H',
    "..": 'I',
    ".---": 'J',
    "-.-": 'K',
    ".-..": 'L',
    "--": 'M',
    "-.": 'N',
    "---": 'O',
    ".--.": 'P',
    "--.-": 'Q',
    ".-.": 'R',
    "...": 'S',
    "-": 'T',
    "..-": 'U',
    "...-": 'V',
    ".--": 'W',
    "-..-": 'X',
    "-.--": 'Y',
    "--..": 'Z'
}

american_morse_code = {
    ".-": 'A',
    "-...": 'B',
    ".. .": 'C',
    "-..": 'D',
    ".": 'E',
    ".-.": 'F',
    "--.": 'G',
    "....": 'H',
    "..": 'I',
    "-.-.": 'J',
    "-.-": 'K',
    "⸺": 'L',
    "--": 'M',
    "-.": 'N',
    ". .": 'O',
    ".....": 'P',
    "..-.": 'Q',
    ". ..": 'R',
    "...": 'S',
    "-": 'T',
    "..-": 'U',
    "...-": 'V',
    ".--": 'W',
    ".-..": 'X',
    ".. ..": 'Y',
    "... .": 'Z'
}

combined_morse_code = international_morse_code | american_morse_code

words = input().replace('{', ' { /').replace('}', '/ } ').split(" / ")

transalted_message = []
for word in words:
    translated_word = []
    for char in word.split("   "):
        translated_word.append(combined_morse_code[char] if char in combined_morse_code else char)
    transalted_message.append(''.join(translated_word))
print(" ".join(transalted_message))