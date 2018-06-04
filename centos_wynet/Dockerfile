FROM my_centos
RUN mkdir github && cd github && git clone https://github.com/voyagingmk/wynet.git
RUN cd github/wynet && git pull && git checkout develop
RUN cd github/wynet && mkdir build && cd build && cmake .. && make
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N ""
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -q -N ""
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -q -N ""
RUN ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
RUN curl -L https://github.com/libunwind/libunwind/releases/download/v1.2.1/libunwind-1.2.1.tar.gz -o libunwind-1.2.1.tar.gz
RUN curl -L https://github.com/gperftools/gperftools/releases/download/gperftools-2.7/gperftools-2.7.tar.gz -o gperftools-2.7.tar.gz
RUN tar zxvf libunwind-1.2.1.tar.gz
RUN tar zxvf gperftools-2.7.tar.gz
RUN cd libunwind-1.2.1 && ./configure && make && make install
RUN cd gperftools-2.7 && ./configure --enable-frame-pointers && make && make install
RUN LD_LIBRARY_PATH=/usr/local/lib && export LD_LIBRARY_PATH
RUN mkdir client && mkdir server
EXPOSE 22
COPY ./id_rsa.pub  ./.ssh/authorized_keys
COPY ./start_server.sh .
COPY ./start_client.sh .
COPY ./start_server_prof.sh .
COPY ./start_client_prof.sh .
COPY ./initssh.sh .

