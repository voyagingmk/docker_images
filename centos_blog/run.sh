# docker container run --rm -it -p 14000:4000 --network mynetwork --ip 172.18.0.2 --name blog my_centos_blog
docker container run -it  -p 14000:4000  -p 32000:22 --name blog my_centos_blog

