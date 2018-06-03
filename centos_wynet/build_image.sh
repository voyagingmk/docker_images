#!/bin/bash
cp ~/.ssh/id_rsa.pub ./id_rsa.pub
docker image build $1 -t my_centos_wynet .
