FROM ubuntu
WORKDIR /mnt
RUN apt-get update && apt-get install -y apache2
RUN service apache2 start
RUN apt-get install -y vim
COPY index.html /var/www/html 
EXPOSE 90
