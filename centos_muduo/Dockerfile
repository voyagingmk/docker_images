FROM my_centos
WORKDIR ~/
RUN mkdir github && cd github && git clone https://github.com/chenshuo/muduo.git
RUN cd github/muduo && sh ./build.sh -j2 &&  cd ../build/release
COPY ./start_server.sh .
COPY ./start_client.sh .

