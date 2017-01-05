/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   iCommunication.hpp
 * Author: thanh
 *
 * Created on March 31, 2016, 1:24 AM
 */

#ifndef ICOMMUNICATION_HPP
#define ICOMMUNICATION_HPP
#include<inttypes.h>
#include<pthread.h>
#include<stdio.h>
#include<stdlib.h>
#include<iostream>
#include<assert.h>
#include<string>
#include<unistd.h>
#include<cstring>
#include<vector>
#define MAX_RX_BUFFER 2048

class iCommunication{
    

public:
    __syscall_slong_t threadTime;
    int terminator;
    int status;
    int byteAvailableFcnMode;// Bytes or Terminator
    int byteAvailableFcnCount;
    int fd;
    pthread_t communication_thread;
    uint8_t rxBuf[MAX_RX_BUFFER];
    int maxRxBuffer;
    int maxTxBuffer;
    int rxDataLength;
    int (*byteAvailableFcn)(void *);
    int byteAvailable;
    struct timespec tim,tim2;
    int enable;
    
    //Getter Setter Functions
    int getEnable() ;

    void setEnable(char enable);
    int isReady();
    __syscall_slong_t getThreadTime() const;

    void setThreadTime(__syscall_slong_t threadTime);

    virtual int getMaxRxBuffer() const;

    virtual void setMaxRxBuffer(int maxRxBuffer);

    virtual int getMaxTxBuffer() const;

    virtual void setMaxTxBuffer(int maxTxBuffer);

    virtual int getRxDataLength() const;

    virtual void setRxDataLength(int rxDataLength);

    virtual void setByteAvailable(int byteAvailable);
    
    virtual void setByteAvailableFcn(int(*byteAvailableFcn)(void*) );

    virtual void setByteAvailableFcnCount(int byteAvailableFcnCount);
    
    virtual int getByteAvailableFcnCount() const;

    virtual void setByteAvailableFcnMode(char byteAvailableFcnMode);

    virtual const char* getByteAvailableFcnMode() const;
    
    virtual void setTerminator(char terminator);
    
    virtual int getTerminator() const;

    virtual void setStatus(char status);

    virtual int getStatus() const;

    virtual void setupThread(void*(*fcn)(void*), void* _icom);
    //Constructor
    iCommunication();
    //Destructor
    virtual ~iCommunication();
    // public properties
    virtual  int getByteAvailable() const;
    
    //public methods : interface function
    virtual char putChar(char c) = 0;
    virtual char putString(char * s) = 0;
    virtual char putString(std::string s) = 0;
    virtual char putString(const char * s)= 0;
    virtual char putByte(void *data) = 0;
    virtual char putBytes(void *data, int len) = 0;
    virtual int  getBytes(char **p);
    virtual void start() = 0;
    virtual void stop() = 0;
    virtual void init()=0;
};


#endif /* ICOMMUNICATION_HPP */

