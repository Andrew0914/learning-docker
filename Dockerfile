FROM centos

LABEL version=7.0
LABEL description="This is an apache image"
LABEL author="Andrew Gonzalez"

RUN yum install httpd -y

WORKDIR /var/www/html
ENV content contenido
COPY ./startbootstrap-freelancer-master/ .
RUN echo "$content" > ./prueba.html

RUN echo "$(whoami)"  >  ./user1.html
RUN useradd andrew
USER andrew
RUN echo "$(whoami)" > /tmp/user2.html
USER root
RUN mv /tmp/user2.html ./user2.html
RUN echo "HELLO WORLD 🍕"
EXPOSE 8080

COPY ./run.sh /run.sh
CMD sh /run.sh
