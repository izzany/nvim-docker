FROM alpine:edge
RUN apk add --no-cache neovim tmux git

RUN addgroup -g 1000 -S dev
RUN adduser -S dev -u 1000
RUN adduser dev root
RUN adduser dev wheel

RUN mkdir /home/dev/.config
