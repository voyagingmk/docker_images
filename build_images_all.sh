#!/bin/bash
cd centos && sh build_image.sh
cd ..
cd centos_muduo && sh build_image.sh
cd ..
cd centos_wynet && sh build_image.sh