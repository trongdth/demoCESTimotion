import socket
import netifaces
import curses
import zmq

# init multicast
MCAST_GRP = '224.1.1.1'
MCAST_PORT = 5007
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)

# init zmq
context = zmq.Context()
socket = context.socket(zmq.PUB)
socket.bind("tcp://*:6002")


def get_ip_address():
    try:
        ip = netifaces.ifaddresses("en1")[netifaces.AF_INET][0]['addr']
        if ip is not None:
            return ip

    except Exception as ex:
        print "Cannot get address of en0 --> " + str(ex)
    return None


def send_ping():
    sock.sendto(get_ip_address(), (MCAST_GRP, MCAST_PORT))


def get_param(prompt_string):
    screen.clear()
    screen.border(0)
    screen.addstr(2, 2, prompt_string)
    screen.refresh()
    input = screen.getstr(10, 10, 60)
    return input

x = 0
action = None
while x != ord('7'):
    screen = curses.initscr()

    screen.clear()
    screen.border(0)
    screen.addstr(1, 2, "Please enter a number...")
    screen.addstr(2, 4, "1 - Ping")
    screen.addstr(3, 4, "2 - Start animation 1")
    screen.addstr(4, 4, "3 - Start animation 2")
    screen.addstr(5, 4, "4 - Start animation 3")
    screen.addstr(6, 4, "5 - Stop animation")
    screen.addstr(7, 4, "6 - Move to top")
    screen.addstr(8, 4, "7 - Exit")
    if action is not None:
        screen.addstr(9, 4, str(action))
    screen.refresh()
    x = screen.getch()

    if x == ord('1'):
        curses.endwin()
        send_ping()
        action = "Sent Ping successfully"

    elif x == ord('2'):
        curses.endwin()
        socket.send("SMART_DESK start_1")
        action = "Sent anim 1 successfully"

    elif x == ord('3'):
        curses.endwin()
        socket.send("SMART_DESK start_2")
        action = "Sent anim 2 successfully"

    elif x == ord('4'):
        curses.endwin()
        socket.send("SMART_DESK start_3")
        action = "Sent anim 3 successfully"

    elif x == ord('5'):
        curses.endwin()
        action = "Set stop successfully"
        socket.send("SMART_DESK stop")

    elif x == ord('6'):
        curses.endwin()
        action = "Set top successfully"
        socket.send("SMART_DESK top")

    elif x == ord('7'):
        curses.endwin()

curses.endwin()
