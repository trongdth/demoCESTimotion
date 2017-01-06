#! /usr/bin/env bash


des_dir="/home/pi/aos/ability/wave/"
pre_ip="pi@192.168.1"
ip="37"
pc_num="10"
pass="Sm@rtdesk2016"
file1="main.py"
file2="control.py"
file3="output/$pc_num/*.json"
#1
pc_num="1"
ip="56"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"
#2
pc_num="2"
ip="74"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#3
pc_num="3"
ip="59"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#4
pc_num="4"
ip="55"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#5
pc_num="5"
ip="43"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#6
pc_num="6"
ip="35"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#7
pc_num="7"
ip="27"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#8
pc_num="8"
ip="30"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#9
pc_num="9"
ip="28"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#10
pc_num="10"
ip="25"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#11
pc_num="11"
ip="21"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#12
pc_num="12"
ip="24"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#13
pc_num="13"
ip="26"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#14
pc_num="14"
ip="23"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#15
pc_num="15"
ip="64"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#16
pc_num="16"
ip="33"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#17
pc_num="17"
ip="46"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#18
pc_num="18"
ip="51"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#19
pc_num="19"
ip="61"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#20
pc_num="20"
ip="77"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#21
pc_num="21"
ip="65"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#22
pc_num="22"
ip="54"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#23
pc_num="23"
ip="39"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#24
pc_num="24"
ip="71"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#25
pc_num="25"
ip="73"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#26
pc_num="26"
ip="60"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#27
pc_num="27"
ip="79"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#28
pc_num="28"
ip="68"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#29
pc_num="29"
ip="57"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#30
pc_num="30"
ip="89"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#31
pc_num="31"
ip="50"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#32
pc_num="32"
ip="62"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#33
pc_num="33"
ip="91"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#34
pc_num="34"
ip="38"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#35
pc_num="35"
ip="85"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#36
pc_num="36"
ip="58"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#37
pc_num="37"
ip="86"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#38
pc_num="38"
ip="66"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#39
pc_num="39"
ip="75"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#40
pc_num="40"
ip="47"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#41
pc_num="41"
ip="88"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#42
pc_num="42"
ip="83"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#43
pc_num="43"
ip="45"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#44
pc_num="44"
ip="36"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#45
pc_num="45"
ip="32"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#46
pc_num="46"
ip="67"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#47
pc_num="47"
ip="90"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#48
pc_num="48"
ip="41"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#49
pc_num="49"
ip="44"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#50
pc_num="50"
ip="42"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#51
pc_num="51"
ip="69"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#52
pc_num="52"
ip="78"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#53
pc_num="53"
ip="40"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#54
pc_num="54"
ip="76"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#55
pc_num="55"
ip="31"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#56
pc_num="56"
ip="80"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#57
pc_num="57"
ip="63"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#58
pc_num="58"
ip="87"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#59
pc_num="59"
ip="84"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#60
pc_num="60"
ip="49"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#61
pc_num="61"
ip="82"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#62
pc_num="62"
ip="72"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#63
pc_num="63"
ip="52"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#64
pc_num="64"
ip="34"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#65
pc_num="65"
ip="37"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#66
pc_num="66"
ip="53"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#67
pc_num="67"
ip="48"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#68
pc_num="68"
ip="29"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#69
pc_num="69"
ip="81"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"

#70
pc_num="70"
ip="70"
echo "Copy data to IP:$ip, desk num:$pc_num"
sshpass -p "$pass" scp -r $file1 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file2 $pre_ip.$ip:$des_dir
sshpass -p "$pass" scp -r $file3 $pre_ip.$ip:$des_dir
echo "Done IP:$ip, desk:$pc_num"





