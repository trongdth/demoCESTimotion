import netifaces
import socket
import struct
import threading
import json
import zmq
import time
import os
from DeskControl import DeskControl


class Wave(object):
    START = "start"
    STOP = "stop"
    CHANGED = "change"
    TOP = "top"
    REBOOT = "reboot"
    state = STOP
    arr_anim_1 = None
    arr_anim_2 = None
    arr_anim_3 = None
    server_ip = None

    zmq_connected = False
    context = zmq.Context()
    socket = context.socket(zmq.SUB)
    tmr = None
    desk_control = DeskControl()

    def __init__(self):
        super(Wave, self).__init__()
        ping_timer = PingTimerClass(self.on_receive_server_ip)
        ping_timer.setDaemon(True)
        ping_timer.start()

    def load_actions(self):
        for i in range(1, 4):
            try:
                with open(str(i) + ".json") as data_file:
                    if i == 1:
                        self.arr_anim_1 = json.load(data_file)
                    elif i == 2:
                        self.arr_anim_2 = json.load(data_file)
                    elif i == 3:
                        self.arr_anim_3 = json.load(data_file)

            except Exception as ex:
                print str(ex)

    def is_need_connect_socket(self):
        if self.server_ip is not None and not self.zmq_connected:
            return True
        return False

    def start_receive_data(self):
        if self.tmr is not None:
            self.tmr.stop()

        self.tmr = ZMQTimerClass(self.desk_control)
        self.tmr.start()
        print "init ZMQTimerClass"

        while True:
            if self.is_need_connect_socket():
                self.zmq_connected = True
                self.socket.connect("tcp://" + self.server_ip + ":6002")
                topicfilter = "SMART_DESK"
                self.socket.setsockopt(zmq.SUBSCRIBE, topicfilter)

                print 'create zmq socket successfully'
                self.state = self.STOP

                while True:
                    try:
                        string = self.socket.recv(zmq.NOBLOCK)
                    except zmq.ZMQError:
                        time.sleep(0.1)
                        if self.state == self.CHANGED:
                            print 'restart all'
                            break
                    else:
                        try:
                            if self.START in string:
                                if self.state != self.START:
                                    self.state = self.START

                                    if '1' in string:
                                        print 'start anim 1'
                                        self.tmr.update_actions(self.arr_anim_1)

                                    elif '2' in string:
                                        print 'start anim 2'
                                        self.tmr.update_actions(self.arr_anim_2)

                                    elif '3' in string:
                                        print 'start anim 3'
                                        self.tmr.update_actions(self.arr_anim_3)

                            elif self.STOP in string:
                                if self.state != self.STOP:
                                    self.state = self.STOP
                                    print 'receive stop animation'
                                self.tmr.stop()

                            elif self.TOP in string:
                                if self.state != self.TOP:
                                    self.state = self.TOP
                                self.desk_control.set_height(1280)

                            elif self.REBOOT in string:
                                if self.state != self.REBOOT:
                                    self.state = self.REBOOT
                                os.system("reboot")

                        except Exception as ex:
                            print str(ex)
            time.sleep(0.5)

    def on_receive_server_ip(self, ip):
        print 'received server ip = ' + ip
        if self.server_ip != ip and self.server_ip is not None:
            self.state = self.CHANGED
        self.zmq_connected = False
        self.server_ip = ip


class PingTimerClass(threading.Thread):
    def __init__(self, call_back):
        threading.Thread.__init__(self)
        self.call_back = call_back

    def run(self):
        MCAST_GRP = '224.1.1.1'
        MCAST_PORT = 5007
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
        sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        sock.bind(('', MCAST_PORT))
        mreq = struct.pack("4sl", socket.inet_aton(MCAST_GRP), socket.INADDR_ANY)

        sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)
        while True:
            tmp = sock.recv(10240)
            self.call_back(tmp)


class ZMQTimerClass(threading.Thread):
    interrupt = False
    arr = None
    desk_control = None
    count = 0

    def __init__(self, control):
        threading.Thread.__init__(self)
        self.desk_control = control

    def update_actions(self, arr_actions):
        self.arr = arr_actions
        self.count = len(arr_actions)
        self.interrupt = False

    def run(self):
        while True:
            if self.count > 0:
                index = len(self.arr) - self.count
                data = self.arr[index]
                time.sleep(data["time"])
                if not self.interrupt:
                    self.desk_control.stop()
                    time.sleep(0.2)
                    if index == 0:
                        self.desk_control.stand_up_and_sit_down(0x09)
                    else:
                        self.desk_control.stand_up_and_sit_down(0x07)
                    self.count -= 1
                    if self.count == 0:
                        self.count = len(self.arr)
            else:
                time.sleep(0.2)

    def stop(self):
        self.interrupt = True
        self.count = 0
        self.desk_control.stop()
        time.sleep(0.2)
        self.desk_control.down()
        time.sleep(0.2)
        self.desk_control.down()


def get_default_gateway():
    gws = netifaces.AF_INET
    data = gws["default"][netifaces.AF_INET]
    return data[0]


def get_ip_address():
    try:
        # ip = netifaces.ifaddresses("wlan0")[netifaces.AF_INET][0]['addr']
        ip = netifaces.ifaddresses("eth0")[netifaces.AF_INET][0]['addr']
        # ip = netifaces.ifaddresses("en1")[netifaces.AF_INET][0]['addr']
        if ip is not None:
            return ip

    except Exception as ex:
        print "Cannot get address of eth0 --> " + str(ex)
    return None

if __name__ == '__main__':
    while True:
        time.sleep(1)
        if get_ip_address() is not None:
            break
    wave = Wave()
    wave.load_actions()
    wave.start_receive_data()

