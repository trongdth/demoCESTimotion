rm -rf deskrep libiComm.so
RPI_LIB_DIR="/home/thanh/ws/Linux/myLib/dynamicLib/ICommunication/RPI"
RPI_DES_DIR="/home/thanh/maya/aos/system/SMART_DESK/deskApp/deskRep/Libs/RPI"

X64_LIB_DIR="/home/thanh/ws/Linux/myLib/dynamicLib/ICommunication/x64"
X64_DES_DIR="/home/thanh/maya/aos/system/SMART_DESK/deskApp/deskRep/Libs/x64"

rm -rf $RPI_DES_DIR/libiComm.so
rm -rf $X64_DES_DIR/libiComm.so
cp $RPI_LIB_DIR/libiComm.so $RPI_DES_DIR/libiComm.so
cp $X64_LIB_DIR/libiComm.so $X64_DES_DIR/libiComm.so
