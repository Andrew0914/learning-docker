FROM debian
RUN apt update -y && \
    apt upgrade -y && \
    apt install apache2 -y && \
    apt install php libapache2-mod-php -y
COPY ./dir.conf /etc/apache2/mods-enabled/dir.conf
RUN echo "ServerName 127.0.0.1" >> /etc/apache2/apache2.conf
RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php
EXPOSE 80
CMD apachectl -D FOREGROUND
