# shadowsocks-libev docker images

## Intro

[Shadowsocks-libev](http://shadowsocks.org) is a lightweight secured SOCKS5 proxy for embedded devices and low-end boxes.

## Usage

### ss-local

```shell
docker run --name shadowsocks --restart=always -d -t \ 
    -v /path/to/config_file:/etc/shadowsocks-libev/config.json \
    -p 127.0.0.1:1080:1080 iceihehe/shadowsocks-libev
```

### ss-server

```shell
docker run --name shadowsocks --restart=always -d -t \
    -v /path/to/config_file:/etc/shadowsocks-libev/config.json \
    -p 0.0.0.0:8338:8338 --entrypoint ss-server \
    -c /etc/shadowsocks-libev/config.json
