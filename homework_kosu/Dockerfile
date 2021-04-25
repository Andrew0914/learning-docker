FROM bunsan/debian-elixir-elm:1.10.4

RUN mkdir /kosu
COPY ./kosu /kosu

# INSTALL postgres utilties
RUN mkdir -p /usr/share/man/man1 && \
    mkdir -p /usr/share/man/man7 && \ 
    apt-get update && \
    apt-get install -y postgresql-client

# Vue app install and deploy
RUN cd /kosu/apps/kosu_web/assets && \ 
    npm install && \
    npm run dev-generate

# Phoenix app preparations
RUN cd /kosu && \
    mix local.hex --force &&\
    mix deps.get && \
    mix compile

# RUN SAPP
WORKDIR /kosu
COPY ./init.sh /init.sh
CMD sh /init.sh