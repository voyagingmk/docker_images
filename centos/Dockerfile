FROM centos
WORKDIR /root
RUN yum -y update
RUN yum -y install zsh
RUN yum -y install git
RUN yum -y install cmake
RUN yum -y install gcc-c++
RUN yum -y install boost
RUN yum -y install boost-devel
RUN yum -y groupinstall "Development tools"
RUN yum -y install net-tools
RUN yum -y install tcpdump
RUN yum -y install openssh-server openssh-clients
RUN yum -y install initscripts
RUN yum -y install graphviz
RUN curl -L https://github.com/libunwind/libunwind/releases/download/v1.2.1/libunwind-1.2.1.tar.gz -o libunwind-1.2.1.tar.gz
RUN curl -L https://github.com/gperftools/gperftools/releases/download/gperftools-2.7/gperftools-2.7.tar.gz -o gperftools-2.7.tar.gz
RUN tar zxvf libunwind-1.2.1.tar.gz
RUN tar zxvf gperftools-2.7.tar.gz
RUN cd libunwind-1.2.1 && ./configure && make && make install
RUN cd gperftools-2.7 && ./configure --enable-frame-pointers && make && make install
RUN yum -y install perf
RUN rm gperftools-2.7.tar.gz && rm libunwind-1.2.1.tar.gz
RUN rm -rf libunwind-1.2.1 && rm -rf gperftools-2.7
RUN yum -y install lsof
RUN yum -y install strace
RUN yum -y install bind-utils
RUN yum -y install wget
RUN wget https://www.openssl.org/source/openssl-1.1.1-pre8.tar.gz 
RUN tar zxvf openssl-1.1.1-pre8.tar.gz
RUN cd openssl-1.1.1-pre8 && make && make install


