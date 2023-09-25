import socket



with open("animals.txt", "r") as f:
    for i, animal in enumerate((line.strip() for line in f.readlines())):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.connect(("chal.pctf.competitivecyber.club", 9999))

        print(sock.recv(1024).decode())
        print(sock.send(f"{animal}\n".encode()))
        print(sock.recv(1024).decode())

        sock.shutdown(2)
        sock.close()
