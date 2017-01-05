/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include"ZmqRequester.hpp"

void ZmqRequester::init() {
}

int ZmqRequester::setup(void* ctx) {
    this->requester = zmq_socket(ctx,ZMQ_REQ);
    if(this->requester != NULL) printf("Create Requester OK\n");
    else printf("Create Requester Fail\n");
    assert(this->requester != NULL);
    return zmq_setsockopt(this->requester,ZMQ_RCVTIMEO,&this->timeOut,4);

}

void ZmqRequester::start() {
    this->setEnable(1);
}

void ZmqRequester::stop() {
//    int res = this->unBind();
//    if(res == 0) zmq_close(this->requester);
    this->setEnable(0);
}

int ZmqRequester::sendMore() {
    

}

int ZmqRequester::sendOne(void* data, int len) {
    const void *txData = (const void*)data;
    int nlen = zmq_send(this->requester,txData,(size_t)len,0);
    assert(nlen = len);
    return nlen;

}

int ZmqRequester::sendNull() {
    int nlen = zmq_send(this->requester,NULL,0,0);
    assert(nlen == 0);
    return nlen;
}

int ZmqRequester::receiveOne() {
        try{
        int nlen = zmq_recv(this->requester,(char *)this->rxBuf,size_t(this->getMaxRxBuffer()),0);
//        assert(nlen >= 0);  
        if ((nlen > 0)&&(nlen <= this->getMaxRxBuffer() )){
            this->setRxDataLength(nlen);
            this->setByteAvailable(nlen);       
        } 
        else {
            this->setRxDataLength(0);
        }
        return this->getRxDataLength();
    }
    catch (const std::exception& e){
        std::cout << " a standard exception was caught, with message '"
                  << e.what() << "'\n";
    } 

}

int ZmqRequester::receiveMore() {

}

int ZmqRequester::bind() {
    return zmq_connect(this->requester,this->endPoint.data());
}

int ZmqRequester::unBind() {
    return zmq_disconnect(this->requester,this->endPoint.data());
}

char ZmqRequester::putByte(void* data) {

}

char ZmqRequester::putBytes(void* data, int len) {
    this->sendOne(data,len);
}

char ZmqRequester::putChar(char c) {

}

char ZmqRequester::putString(const char* s) {

}

char ZmqRequester::putString(std::string s){

}

char ZmqRequester::putString(char* s){

}

void* doReqThread(void* data) {
    ZmqRequester *x = (ZmqRequester*)data;
    while(1){
        if(x->isReady() > 0){
            nanosleep(&x->tim,&x->tim2);
            if(x->isReady() > 0){
                //Check data
                if(x->receiveOne() > 0){
                    (*x->byteAvailableFcn)(x);
                }              
            }    
        }
    }
}
ZmqRequester::ZmqRequester() {
    printf("Khoi tao ZmqRequester\n");
    this->setup(ZmqContext::getInstance()->context);
    this->setEnable(0);
}