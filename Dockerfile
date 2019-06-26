FROM ubuntu:latest
RUN apt-get update &&\  
    apt-get install -y apache2 &&\ 
    mkdir /var/www/html -p &&\
ln -sf /dev/stdout /var/log/apache2/access.log && \
ln -sf /dev/sterr /var/log/apache2/error.log 
ADD index.tgz /var/www/hmtml
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
