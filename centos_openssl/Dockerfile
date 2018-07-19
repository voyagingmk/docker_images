FROM my_centos
RUN openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365 -nodes -subj '/CN=www.mydom.com/O=My Dom, Inc./C=US/ST=Oregon/L=Portland'
COPY ./start_server.sh .
COPY ./start_client.sh .