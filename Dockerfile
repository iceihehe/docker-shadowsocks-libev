# Shadowsocks libev with Debian
#
# no entrypoint so you can choose to make it server or local

FROM        debian
MAINTAINER  iceihehe "iceihehe@gmail.com"

RUN printf "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --force-yes shadowsocks-libev
RUN apt-get autoremove
