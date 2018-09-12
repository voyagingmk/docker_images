docker container run --privileged --rm -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
-p 32000:22 --name test_wynet my_centos_wynet


