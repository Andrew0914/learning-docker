FROM ubuntu:20.04
RUN apt update
RUN DEBIAN_FRONTEND="noninteractive" apt -y install tzdata
RUN apt -y install apache2 
RUN apt -y install ufw 
EXPOSE 80
CMD apachectl -D FOREGROUND