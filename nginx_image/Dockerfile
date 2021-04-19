FROM nginx
RUN useradd andrew
COPY fruit /usr/share/nginx/html
ENV archive docker
WORKDIR /usr/share/nginx/html
EXPOSE 90
LABEL version=1
USER andrew
RUN echo "Yo soy $(whoami)" > /tmp/yo.html
USER root
RUN cp /tmp/yo.html ./docker.html
VOLUME /var/log/nginx
# Si no se pone un CMD, tomara como ejecución el CMD de nginx
CMD nginx -g 'daemon off;' 