/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   ZmqRequester.hpp
 * Author: thanh
 *
 * Created on April 4, 2016, 3:01 AM
 */

#ifndef ZMQREQUESTER_HPP
#define ZMQREQUESTER_HPP

#include "iZmq.hpp"
void * doReqThread(void *data);
class ZmqRequester:public iZmq{
    
public:
    friend void *doReqThread(void *data);
    void * requester;
    
//Interface funtion
    virtual void init();
    
    virtual int setup(void* ctx);

    virtual void start();

    virtual void stop();

    virtual int sendMore();

    virtual int sendOne(void* data, int len);

    virtual int sendNull();

    virtual int receiveOne();

    virtual int receiveMore();

    virtual int bind();

    virtual int unBind();

//    virtual int getBytes(char** p);

    virtual char putByte(void* data);

    virtual char putBytes(void* data, int len);

    virtual char putChar(char c);

    virtual char putString(const char* s);

    virtual char putString(std::string s);

    virtual char putString(char* s);
    ZmqRequester();















    
    



    
    






















    
    

    


};


#endif /* ZMQREQUESTER_HPP */

