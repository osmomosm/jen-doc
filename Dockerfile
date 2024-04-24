FROM ubuntu:latest
LABEL MAINTAINER="korishettyom@gmail.com"
RUN apt-get update && apt-get -y install apache2
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apachectl" ]
CMD [ "-D","FOREGROUND"]
COPY /root/index.html /var/www/html/index.html
VOLUME /var/www/html
