# docker-shadowsocks-libev
Dockerfile for shadowsocks-libev

server:

    docker run -d -it -p 10086:8338 iceihehe/ss-libev ss-server -s 0.0.0.0 -p 8338 -l 1080 -m aes-256-cfb -t 60 -v -k "hehe'haha"

local:

    docker run -d -it -p 1080:8338 iceihehe/ss-libev ss-local -s x.x.x.x -p 10086 -b 0.0.0.0 -l 8338 -m aes-256-cfb -t 60 -v -k "hehe'haha"
