with open("ct.txt", 'r') as f:
    cipher_text = int(f.read())

with open("e.txt", 'r') as f:
    e = int(f.read())

with open("p.txt", 'r') as f:
    p = int(f.read())

with open("q.txt", 'r') as f:
    q = int(f.read())

n = p * q
phi = (p - 1) * (q - 1)
d = pow(e, -1, phi)

plain_text = pow(cipher_text, d, n)
print(bytes.fromhex(hex(plain_text)[2:]).decode())
