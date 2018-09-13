FROM my_centos
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -l -c "rvm requirements"
RUN export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64
RUN /bin/bash -l -c "rvm pkg install openssl"
RUN /bin/bash -l -c "rvm install 2.3 --with-openssl-dir=/usr/local/rvm/usr"
RUN /bin/bash -l -c "gem update && gem install jekyll jekyll-tagging jekyll-sitemap pygments.rb redcarpet"
RUN mkdir github && cd github && git clone https://github.com/wyman1024/wyman1024.github.io.jekyll-now.git blog
COPY ./id_rsa.pub  ./.ssh/authorized_keys
COPY ./all.sh .
COPY ./initssh.sh .