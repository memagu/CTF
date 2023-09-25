import socket
from multiprocessing import Pool

NEWLINE = '\n'


def guess_password(guess: str) -> None:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.connect(("chal.pctf.competitivecyber.club", 4757))

        sock.recv(1024)
        sock.send(guess[1].encode())
        response = sock.recv(1024)
        if response and b"There's been an error" not in response and "is not long enough" in response:
            print(response)


with open("13_char_passwords.txt", 'r') as f:
    guesses = [f"PCTF{{{line.removesuffix(NEWLINE)}}}\n" for line in f.readlines()]



with Pool(24) as p:
    p.map(guess_password, guesses)


