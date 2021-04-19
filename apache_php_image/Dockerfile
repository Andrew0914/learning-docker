FROM centos:7
RUN \
    yum -y install httpd \
    php \
    php-cli\
    php-common \
    mod_ssl \
    openssl
RUN echo "<?php phpinfo(); ?>" > /var/www/html/hola.php
COPY startbootstrap-sb-admin-2 /var/www/html/
COPY docker.key /docker.key
COPY docker.crt /docker.crt
COPY ssl.conf /etc/httpd/conf.d/default.conf
EXPOSE 443
CMD apachectl -DFOREGROUND