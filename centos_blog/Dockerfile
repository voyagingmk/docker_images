FROM my_centos
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN source /etc/profile.d/rvm.sh && source ~/.bashrc && source ~/.bash_profile && /usr/local/rvm/bin/rvm install 2.3  --with-openssl-dir=/usr/local/ssl
RUN /usr/local/rvm/bin/rvm use 2.3
# RUN yum install -y centos-release-scl-rh
# RUN yum install -y rh-ruby23
# RUN scl enable rh-ruby23 bash
RUN yum -y install rubygems
RUN gem update
RUN gem install jekyll
RUN gem install jekyll-tagging
RUN gem install jekyll-sitemap
RUN gem install pygments.rb
RUN gem install redcarpet
RUN mkdir github && cd github && git clone https://github.com/wyman1024/wyman1024.github.io.jekyll-now.git blog
RUN cd github/blog && git pull && git checkout develop
