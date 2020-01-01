FROM debian:8.7
RUN apt-get -y update
RUN apt-get -y install apt-transport-https
RUN echo "deb [check-valid-until=no] http://cdn-fastly.deb.debian.org/debian jessie main" > /etc/apt/sources.list.d/jessie.list
RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" > /etc/apt/sources.list.d/jessie-backports.list
#RUN sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list
COPY ./sources.list  /etc/apt/sources.list
RUN apt-get -y -o Acquire::Check-Valid-Until=false update
# RUN apt-get install debian-archive-keyring
# RUN apt-get -y update
# RUN apt-get -y install debian-keyring
RUN apt-get -y install build-essential autoconf libtool pkg-config
RUN apt-get -y install libgflags-dev libgtest-dev
RUN apt-get -y install clang-5.0 libc++-dev

RUN git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc
RUN sh -c 'cd grpc & git submodule update --init'
RUN sh -c 'cd grpcc & mkdir -p cmake/build & cd cmake/build & cmake ../.. & make'