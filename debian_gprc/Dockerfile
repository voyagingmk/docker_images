FROM debian:9
RUN apt-get -y update
COPY ./sources.list  /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install build-essential autoconf libtool pkg-config
RUN apt-get -y install libgflags-dev libgtest-dev
RUN apt-get -y install clang-5.0 libc++-dev
RUN apt-get -y install cmake
RUN sh -c 'cd grpcc & mkdir -p cmake/build & cd cmake/build & cmake ../.. & make'