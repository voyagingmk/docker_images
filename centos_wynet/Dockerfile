FROM my_centos
RUN mkdir github && cd github && git clone https://github.com/voyagingmk/wynet.git
RUN cd github/wynet && git pull && git checkout develop
RUN cd github/wynet && mkdir build && cd build && cmake .. && make
RUN ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
EXPOSE 22
COPY ./id_rsa.pub  ./.ssh/authorized_keys
COPY ./start_server.sh .
COPY ./start_client.sh .


