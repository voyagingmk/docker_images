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
