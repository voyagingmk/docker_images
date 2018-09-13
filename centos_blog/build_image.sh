#!/bin/bash
cp ~/.ssh/id_rsa.pub ./id_rsa.pub
docker image build -t my_centos_blog .