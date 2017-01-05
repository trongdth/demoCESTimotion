/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
#include"iCommunication.hpp"

iCommunication::iCommunication() {
    printf("Create iCommunication\n");
    this->tim.tv_sec = 0;
    this->setThreadTime(1000000L);
    this->setByteAvailable(0);
    this->setRxDataLength(0);
    
}

iCommunication::~iCommunication() {
    printf("Delete iCommunication\n");
}

void iCommunication::setupThread(void*(*fcn)(void*) , void* _icom) {
    pthread_create(&this->communication_thread,NULL,fcn, _icom);
}

int iCommunication::getByteAvailable() const {
    return this->byteAvailable;

}

int iCommunication::getByteAvailableFcnCount() const {
    return this->byteAvailableFcnCount;

}

const char* iCommunication::getByteAvailableFcnMode() const {

}

int iCommunication::getStatus() const {
    return this->status;

}

void iCommunication::setByteAvailable(int byteAvailable) {
    this->byteAvailable = byteAvailable;
}

void iCommunication::setByteAvailableFcn(int(*byteAvailableFcn)(void*) ) {
    this->byteAvailableFcn = byteAvailableFcn;

}

void iCommunication::setByteAvailableFcnCount(int byteAvailableFcnCount) {
    this->byteAvailableFcnCount = byteAvailableFcnCount;

}

void iCommunication::setByteAvailableFcnMode(char byteAvailableFcnMode) {
    this->byteAvailableFcnMode = byteAvailableFcnMode;
    
}

void iCommunication::setStatus(char status) {
    this->status = status;
}

void iCommunication::setTerminator(char terminator) {
    this->terminator = terminator;

}

int iCommunication::getTerminator() const {
    return this->terminator;
}

void iCommunication::setRxDataLength(int rxDataLength) {
    this->rxDataLength = rxDataLength;
}

int iCommunication::getRxDataLength() const {
    return rxDataLength;
}

int iCommunication::getMaxRxBuffer() const {
    return maxRxBuffer;
}

int iCommunication::getMaxTxBuffer() const {
    return maxTxBuffer;
}

void iCommunication::setMaxRxBuffer(int maxRxBuffer) {
    this->maxRxBuffer = maxRxBuffer;
//    delete this->rxBuf;
}

void iCommunication::setMaxTxBuffer(int maxTxBuffer) {
    this->maxTxBuffer = maxTxBuffer;
}

__syscall_slong_t iCommunication::getThreadTime() const {
    return threadTime;
}

void iCommunication::setThreadTime(__syscall_slong_t threadTime) {
    this->threadTime = threadTime;
    this->tim.tv_nsec = threadTime;
}

int iCommunication::getBytes(char** p) {
    delete *p;
    int n = this->getByteAvailable();
    char *x = new char(n);
    memcpy(x,this->rxBuf,n);
    *p = x;
    this->setRxDataLength(n);
    this->setByteAvailable(0);
    std::memset(this->rxBuf,0,this->getMaxRxBuffer());
    return n;
}

int iCommunication::getEnable()  {
    return enable;
}

void iCommunication::setEnable(char enable) {
    this->enable = enable;
}

int iCommunication::isReady() {
    return this->getEnable();
}

















