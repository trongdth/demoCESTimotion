#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=x64
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/8e401875/Desk.o \
	${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o \
	${OBJECTDIR}/_ext/aff35550/TimboxCommFrame.o \
	${OBJECTDIR}/_ext/f5fd010b/Timer.o \
	${OBJECTDIR}/_ext/8e401875/TimotionController.o \
	${OBJECTDIR}/user/src/main.o


# C Compiler Flags
CFLAGS=-m64

# CC Compiler Flags
CCFLAGS=-m64
CXXFLAGS=-m64

# Fortran Compiler Flags
FFLAGS=-m64

# Assembler Flags
ASFLAGS=--64

# Link Libraries and Options
LDLIBSOPTIONS=-lpthread -ldl `pkg-config --libs libzmq` -liComm  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk user/x64/deskrep

user/x64/deskrep: ${OBJECTFILES}
	${MKDIR} -p user/x64
	g++ -o user/x64/deskrep ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/8e401875/Desk.o: /home/thanh/ws/Linux/myLib/Library/src/Desk.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/8e401875
	${RM} "$@.d"
	$(COMPILE.cc) -g -DSERIAL_DEBUG -I/home/thanh/ws/Linux/myLib/Library/inc -I/home/thanh/aos/system/os_manager/smartdesk/deskApp/TimotionV1 `pkg-config --cflags libzmq` -std=c++11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8e401875/Desk.o /home/thanh/ws/Linux/myLib/Library/src/Desk.cpp

${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o: /home/thanh/ws/Linux/myLib/Library/src/Device/AutonomousCommFrame.c
	${MKDIR} -p ${OBJECTDIR}/_ext/aff35550
	${RM} "$@.d"
	$(COMPILE.c) -g -s -I/home/thanh/ws/Linux/myLib/Library/inc `pkg-config --cflags libzmq` -std=c11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o /home/thanh/ws/Linux/myLib/Library/src/Device/AutonomousCommFrame.c

${OBJECTDIR}/_ext/aff35550/TimboxCommFrame.o: /home/thanh/ws/Linux/myLib/Library/src/Device/TimboxCommFrame.c
	${MKDIR} -p ${OBJECTDIR}/_ext/aff35550
	${RM} "$@.d"
	$(COMPILE.c) -g -s -I/home/thanh/ws/Linux/myLib/Library/inc `pkg-config --cflags libzmq` -std=c11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aff35550/TimboxCommFrame.o /home/thanh/ws/Linux/myLib/Library/src/Device/TimboxCommFrame.c

${OBJECTDIR}/_ext/f5fd010b/Timer.o: /home/thanh/ws/Linux/myLib/Library/src/TIMER/Timer.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/f5fd010b
	${RM} "$@.d"
	$(COMPILE.cc) -g -DSERIAL_DEBUG -I/home/thanh/ws/Linux/myLib/Library/inc -I/home/thanh/aos/system/os_manager/smartdesk/deskApp/TimotionV1 `pkg-config --cflags libzmq` -std=c++11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/f5fd010b/Timer.o /home/thanh/ws/Linux/myLib/Library/src/TIMER/Timer.cpp

${OBJECTDIR}/_ext/8e401875/TimotionController.o: /home/thanh/ws/Linux/myLib/Library/src/TimotionController.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/8e401875
	${RM} "$@.d"
	$(COMPILE.cc) -g -DSERIAL_DEBUG -I/home/thanh/ws/Linux/myLib/Library/inc -I/home/thanh/aos/system/os_manager/smartdesk/deskApp/TimotionV1 `pkg-config --cflags libzmq` -std=c++11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/8e401875/TimotionController.o /home/thanh/ws/Linux/myLib/Library/src/TimotionController.cpp

${OBJECTDIR}/user/src/main.o: user/src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/user/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -DSERIAL_DEBUG -I/home/thanh/ws/Linux/myLib/Library/inc -I/home/thanh/aos/system/os_manager/smartdesk/deskApp/TimotionV1 `pkg-config --cflags libzmq` -std=c++11  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/user/src/main.o user/src/main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
