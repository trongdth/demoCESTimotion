/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: thanh
 *
 * Created on March 31, 2016, 12:12 AM
 */

#include <cstdlib>
#include "SmartDesk/TimotionController.hpp"
#include"COMMUNICATION/Uart.hpp"
#include "ZMQ/ZmqReplier.hpp"
#include<stdlib.h>
#include<stdio.h>
#include<string>
#include"TIMER/Timer.hpp"
#include "ZMQ/ZmqRequester.hpp"
#include<inttypes.h>
using namespace std;
static TiMotionController mDesk;
int uartLfCallkback(void *data){
    mDesk.ProcessUartCallback();   
}
int ZmpReplierCallback(void *data){   
    mDesk.ProcessZmqRepCallback();
}
int controlerFcn(void *data){
    mDesk.Run();
}
int main(int argc, char** argv) {
//    int data[1];
    int major, minor, patch;
    zmq_version (&major, &minor, &patch); 
    printf ("Current ØMQ version is %d.%d.%d\n", major, minor, patch);
    struct timespec tim,tim2;
    tim.tv_sec = 0;
    tim.tv_nsec = 100000L; // 100us
    
    mDesk.Init("data.dat");
    mDesk.Start();
    
    while(1){
        nanosleep(&tim , &tim2);
        mDesk.Update();
    }
}

