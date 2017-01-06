#!/usr/bin/env python
#
# File:   desk_control.py
# Author: Hoang Phuong
#
# Created on September 24, 2015, 17:10 PM
#
import struct
import zmq


class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        else:
            cls._instances[cls].__init__(*args, **kwargs)
        return cls._instances[cls]


class DeskControl(object):
    __metaclass__ = Singleton
    _socket_req = None

    def get_checksum(self, list_byte):
        checksum = 0
        for i in range(2, len(list_byte)):
            checksum += list_byte[i]
        return checksum if (checksum <= 255) else ((checksum)%255)

    def __init__(self):
        if self._socket_req is None:
            url_socket = "ipc:///tmp/desk_control:9999"
            c = zmq.Context()

            socket_req = c.socket(zmq.REQ)
            socket_req.connect(url_socket)
            socket_req.setsockopt(zmq.RCVTIMEO, 100)

            print "desk client control url socket: " + url_socket
            self._socket_req = socket_req

    def set_height(self, height, desk_address_id=0x12):

        byte_array = bytearray()
        byte_array.append(255)
        byte_array.append(255)

        byte_array.append(2)

        byte_array.append(3)
        byte_array.append(3)
        byte_array.append(2)

        byte_array.append(desk_address_id)

        temp = list(struct.pack(">H", int(height)))
        print ("list byte height:")
        print temp
        for b in temp:
            if b != 0:
                byte_array.append(b)

        checksum = self.get_checksum(byte_array)

        print ("checksum:" + str(checksum))

        byte_array.append(checksum)

        byte_array.append(250)
        byte_array.append(250)

        print ("setheight->sent bytes:")
        print ''.join('{:02x}'.format(x) for x in byte_array)

        try:
            self._socket_req.send(byte_array)
            self._socket_req.recv()
        except Exception as ex:
            print str(ex)
            return -1
        return 1

    def down(self):
        byte_array = bytearray()
        byte_array.append(255)
        byte_array.append(255)

        byte_array.append(2)

        byte_array.append(3)
        byte_array.append(3)
        byte_array.append(2)
        byte_array.append(4)
        byte_array.append(1)
        byte_array.append(1)

        checksum = self.get_checksum(byte_array)

        print ("checksum:" + str(checksum))

        byte_array.append(checksum)
        byte_array.append(250)
        byte_array.append(250)

        print ("down->sent bytes:")
        print ''.join('{:02x}'.format(x) for x in byte_array)

        try:
            self._socket_req.send(byte_array)
            self._socket_req.recv()
        except Exception as ex:
            print(str(ex))
            return -1
        return 1

    def stop(self):
        byte_array = bytearray()
        byte_array.append(255)
        byte_array.append(255)

        byte_array.append(2)

        byte_array.append(3)
        byte_array.append(4)
        byte_array.append(5)

        byte_array.append(5)

        byte_array.append(1)
        byte_array.append(1)

        checksum = self.get_checksum(byte_array)

        print ("checksum:" + str(checksum))

        byte_array.append(checksum)

        byte_array.append(250)
        byte_array.append(250)

        print ("stop->sent bytes:")
        print ''.join('{:02x}'.format(x) for x in byte_array)

        try:
            self._socket_req.send(byte_array)
            self._socket_req.recv()
        except Exception as ex:
            print(str(ex))
            return -1
        return 1

    def stand_up_and_sit_down(self, address_desk_id):
        byte_array = bytearray()
        byte_array.append(255)
        byte_array.append(255)

        byte_array.append(2)

        byte_array.append(3)
        byte_array.append(3)
        byte_array.append(2)

        byte_array.append(address_desk_id)

        byte_array.append(1)
        byte_array.append(1)

        checksum = self.get_checksum(byte_array)
        byte_array.append(checksum)

        byte_array.append(250)
        byte_array.append(250)

        print ("set_stand_up_or_sit_down -> sent bytes:")
        print ''.join('{:02x}'.format(x) for x in byte_array)

        try:
            self._socket_req.send(byte_array)
            self._socket_req.recv()
        except Exception as ex:
            print str(ex)
            return -1
        return 1
