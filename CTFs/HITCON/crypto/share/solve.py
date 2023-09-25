import socket
import re
from scipy.interpolate import lagrange

P = 17
N = 14


def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(("chal-share.chal.hitconctf.com", 11111))

    # Send p and n
    sock.recv(4)
    sock.send(f"{P}\n".encode())
    sock.recv(4)
    sock.send(f"{N}\n".encode())

    # Receive the shares
    shares = eval(re.search(r"\[.+\]", sock.recv(1024).decode())[0])

    # Calculate the lagrangian polynomial
    poly = lagrange(range(1,len(shares) + 1), shares)

    # Grab the first term mod P
    secret = round(poly[0]) % P

    # Send the secret to the server
    sock.send("0\n".encode())
    sock.recv(4)
    sock.send("0\n".encode())
    sock.recv(9)
    print(sock.send(f"{secret}\n".encode()))

    # Print the flag
    print(sock.recv(1024).decode())


if __name__ == "__main__":
    main()