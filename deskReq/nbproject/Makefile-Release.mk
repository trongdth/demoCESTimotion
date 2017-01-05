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
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o \
	${OBJECTDIR}/user/src/MyZMQ.o \
	${OBJECTDIR}/user/src/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deskreq

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deskreq: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/deskreq ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o: /home/thanh/ws/Linux/myLib/Library/src/Device/AutonomousCommFrame.c
	${MKDIR} -p ${OBJECTDIR}/_ext/aff35550
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/aff35550/AutonomousCommFrame.o /home/thanh/ws/Linux/myLib/Library/src/Device/AutonomousCommFrame.c

${OBJECTDIR}/user/src/MyZMQ.o: user/src/MyZMQ.cpp
	${MKDIR} -p ${OBJECTDIR}/user/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/user/src/MyZMQ.o user/src/MyZMQ.cpp

${OBJECTDIR}/user/src/main.o: user/src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/user/src
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/user/src/main.o user/src/main.cpp

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
