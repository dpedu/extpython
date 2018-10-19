FROM ubuntu:bionic

RUN sed -i -E 's/(archive|security).ubuntu.com/192.168.1.142/' /etc/apt/sources.list && \
    sed -i -E 's/^deb-src/# deb-src/' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y dpkg-dev debhelper && \
    useradd builder && \
    install -d /target -o builder -g builder

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev \
    libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev
