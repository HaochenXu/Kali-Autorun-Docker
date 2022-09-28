#!/bin/bash
cd /etc/apt
rm sources.list
touch sources.list
echo "deb http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" >> sources.list
echo "deb-src http://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free" >> sources.list
cd //
apt update
apt upgrade -y
apt install python3 python3-pip python3-wheel python3-setuptools openssh-server gcc nano

tar -xzf openjdk.tar.gz
echo "JAVA_HOME=/jdk-17.0.4.1+1" >> /etc/profile
echo "PATH=$PATH:$JAVA_HOME/bin:" >> /etc/profile
echo "export PATH JAVA_HOME"
source /etc/profile
