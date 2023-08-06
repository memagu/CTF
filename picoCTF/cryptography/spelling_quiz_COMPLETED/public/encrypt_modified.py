import random
import os

files = [
    os.path.join(path, file)
    for path, dirs, files in os.walk('.')
    for file in files
    if file.split('.')[-1] == 'txt'
]

alphabet = 'abcdefghijklmnopqrstuvwxyz'
shuffled = 'sprgwhkjoqzldcuvyemnbtiafx'  # Via: https://www.guballa.de/substitution-solver
dictionary = dict(zip(alphabet, shuffled))

for filename in files:
    text = open(filename, 'r').read()
    encrypted = ''.join([
        dictionary[c]
        if c in dictionary else c
        for c in text
    ])
    print(encrypted)
