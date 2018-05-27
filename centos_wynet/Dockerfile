FROM my_centos
WORKDIR ~/
RUN mkdir github && cd github && git clone https://github.com/voyagingmk/wynet.git
RUN cd github/wynet && git pull && git checkout develop
RUN cd github/wynet && mkdir build && cd build && cmake .. && make
COPY ./start_server.sh .
COPY ./start_client.sh .


