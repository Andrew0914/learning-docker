# FROM NODE image
FROM node:14.17 as webassets
COPY kosu /kosu
RUN cd /kosu/apps/kosu_web/assets && \ 
    npm install && \
    npm run dev-generate

#  FROM ELIXIR image
FROM elixir:1.10.4
COPY --from=webassets /kosu /kosu
# variables to test DB
ENV PGUSER="postgres"
ENV PGPASSWORD="postgres"
ENV PGDATABASE="atama_dev"
ENV PGPORT="5432"
ENV PGHOST="postgres-andrew"
# port
EXPOSE 5000
# install postgres utility to check it
RUN mkdir -p /usr/share/man/man1 && \
    mkdir -p /usr/share/man/man7 && \ 
    apt update && \
    apt install -y postgresql-client
# compile and prepare phoenix app
WORKDIR /kosu

RUN mix local.hex --force &&\
    mix local.rebar --force && \
    mix deps.get && \
    mix compile

# run app
RUN apt install -y bash
COPY ./init.sh /init.sh
CMD sh /init.sh