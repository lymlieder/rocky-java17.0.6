FROM rockylinux:latest

RUN	 yum update -y && \
cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
yum install wget -y && \
wget https://hub.shkxmh.com/System/jdk-17.0.6_linux-x64_bin.rpm && \
yum install jdk-17.0.6_linux-x64_bin.rpm -y && \
rm -r jdk-17.0.6_linux-x64_bin.rpm && \
yum install glibc-locale-source glibc-langpack-zh -y && \
yum install glibc-langpack-zh -y  && yum -y reinstall glibc-common && \
yum clean all  && \
localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 

ENV LC_ALL "zh_CN.UTF-8"
