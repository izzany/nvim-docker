FROM alpine:edge

RUN addgroup -g 1000 -S dev
RUN adduser -G dev -u 1000 dev -D
RUN addgroup dev root
RUN addgroup dev wheel

RUN apk add --no-cache neovim tmux git alpine-sdk

RUN mkdir /home/dev/.config

