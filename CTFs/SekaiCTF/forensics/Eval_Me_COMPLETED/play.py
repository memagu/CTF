from pwn import *


server_ip = "chals.sekai.team"
server_port = 9000

r = remote(server_ip, server_port)

response = r.recvline().decode().strip()
print(response)
response = r.recvline().decode().strip()
print(response)
response = r.recvline().decode().strip()
print(response)
response = r.recvline().decode().strip()
print(response)
while True:
    response = r.recvline().decode().strip()
    print(response)
    """if 'subprocess' in response:
        print(eval(response))
        response = r.recvline().decode().strip()
        print(response)"""

    print(eval(response))
    r.sendline(str(eval(response)).encode())
    response = r.recvline().decode().strip()
    print(response)

r.close()