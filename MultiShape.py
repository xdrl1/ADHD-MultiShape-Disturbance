import serial
import time
import RPi.GPIO as GPIO
import atexit
import socket


def SendCommand(serial, str):
    cmd = bytes.fromhex(str)
    serial.write(cmd)
    time.sleep(0.1)


def Angle2DutyRatio(angle):
    return 2.5 + angle / 18


def SetupServo(servopin):
    atexit.register(GPIO.cleanup)
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(servopin, GPIO.OUT, initial=False)
    p = GPIO.PWM(servopin, 50)
    p.start(Angle2DutyRatio(initialAngle))
    time.sleep(0.5)
    p.ChangeDutyCycle(0)
    return p


def Rotate(servo):
    servo.start(Angle2DutyRatio(rotateAngle))
    time.sleep(0.5)
    servo.ChangeDutyCycle(0)
    time.sleep(1)
    servo.start(Angle2DutyRatio(initialAngle))
    time.sleep(0.5)
    servo.ChangeDutyCycle(0)


def SetupNFCReader(path):
    nfcReader = serial.Serial(path, 115200)
    # make NFC reader work positively
    SendCommand(nfcReader, 'AA BB 10 00 00 00 11 02 50 02 00 02 60 ff ff ff ff ff ff 23')
    nfcReader.read(nfcReader.inWaiting())
    print(path, 'BEGIN...')
    return nfcReader


def SetupServer(addr):
    web = socket.socket()
    web.bind(addr)
    # let OS recycles certain port immediately when unused
    web.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    web.listen(5)
    print('Waiting connection...')
    return web


def ShowAndSendInfo(data):
    print(data)
    content2Send = shape[data['blockShape']] + color[data['blockColor']] + shape[data['boxShape']] + color[data['boxColor']]
    data2Send = bytes.fromhex(start_code + user_id + data_type + data_length + content2Send)
    conn.send(data2Send)


def Operation(nfcReader, servo, boxInfo):
    if nfcReader.inWaiting() != 0:
        recvData = nfcReader.read(nfcReader.inWaiting())
        blockData = recvData[6:recvData[2] - 7].decode('utf-8').split('&&')
        data = dict(blockColor=blockData[0], blockShape=blockData[1], boxColor=boxInfo[0], boxShape=boxInfo[1])
        ShowAndSendInfo(data)
        Rotate(servo)


# absolute angle
initialAngle = 90
rotateAngle = 160

# shape & color
shape = {'square': '00', 'triangle': '01', 'round': '10', 'pentagon': '11'}
color = {'blue': '00', 'yellow': '01', 'red': '10', 'green': '11'}

# other info
start_code = '55aa55aa55aa55aa'
user_id = '12345678'
data_type = '01000400'
data_length = '04000000'
addr = ('0.0.0.0', 12580)

servo1 = SetupServo(26)
servo2 = SetupServo(19)
servo3 = SetupServo(13)
servo4 = SetupServo(6)

reader1 = SetupNFCReader('/dev/ttyUSB0')
reader2 = SetupNFCReader('/dev/ttyUSB1')
reader3 = SetupNFCReader('/dev/ttyUSB2')
reader4 = SetupNFCReader('/dev/ttyUSB3')

boxInfo1 = ['blue', 'triangle']
boxInfo2 = ['yellow', 'pentagon']
boxInfo3 = ['red', 'round']
boxInfo4 = ['green', 'square']

server = SetupServer(addr)

while 1:
    try:
        conn, _addr = server.accept()
        print('New connection established!')
        while 1:
            try:
                Operation(reader1, servo1, boxInfo1)
                Operation(reader2, servo2, boxInfo2)
                Operation(reader3, servo3, boxInfo3)
                Operation(reader4, servo4, boxInfo4)
            except KeyboardInterrupt:
                conn.close()
                break
    except KeyboardInterrupt:
        server.close()
        break
print('\nEND')
