FROM elixir:1.8.1

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
ENV NODE_VERSION 10.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash && \
    apt-get install -y nodejs inotify-tools

ARG uid=1000
ARG gid=1000
RUN useradd app -ms /bin/bash -u $uid && \
    groupmod -g $gid app
USER app

RUN mix local.hex --force && \
    mix archive.install hex phx_new 1.4.6 --force && \
    mix local.rebar --force

WORKDIR /app
