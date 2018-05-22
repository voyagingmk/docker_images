FROM centos
WORKDIR ~/
RUN yum -y update
RUN yum -y install zsh
RUN yum -y install git
RUN yum -y install cmake
RUN yum -y install gcc-c++
RUN yum -y install boost
RUN yum -y install boost-devel
RUN yum -y groupinstall "Development tools"
RUN mkdir github && cd github && git clone https://github.com/chenshuo/muduo.git
RUN cd github/muduo && sh ./build.sh -j2 &&  cd ../build/release
COPY ./start_server.sh .
COPY ./start_client.sh .

