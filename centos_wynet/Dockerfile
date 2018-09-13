FROM my_centos
RUN mkdir github && cd github && git clone https://github.com/voyagingmk/wynet.git
RUN cd github/wynet && git pull && git checkout develop
RUN cd github/wynet && mkdir build && cd build && cmake .. && make
RUN mkdir client && mkdir server
COPY ./id_rsa.pub  ./.ssh/authorized_keys
COPY ./start_server.sh .
COPY ./start_client.sh .
COPY ./start_server_prof.sh .
COPY ./start_client_prof.sh .
COPY ./initssh.sh .
COPY ./pprof_client.sh .
COPY ./pprof_server.sh .
COPY ./tcpdump.sh .

