import socket


sk = socket.socket()
# DO NOT forget to change IP addr
sk.connect(('192.168.31.161', 12580))
print('success')

while 1:
    server_reply = sk.recv(1024)
    if not server_reply:
        sk.close()
        break
    print(server_reply)
