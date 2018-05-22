#!/bin/bash
cd centos && source build_image.sh
cd ..
cd centos_muduo && source build_image.sh
cd ..
cd centos_wynet && source build_image.sh