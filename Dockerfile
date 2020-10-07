FROM archlinux/base

MAINTAINER data@make.org

ENV LANG=en_US.UTF-8

RUN pacman -Syy && \
  pacman -S git openssh docker make sed awk gzip grep curl vim tree iproute2 inetutils jq python python-pip --noconfirm --needed && \
  pacman -Scc --noconfirm

