# docker-dnscrypt
Dockerized DNSCrypt Proxy

```
docker build --rm -t fffaraz/dnscrypt .
docker run --rm -it -p 53:53 -p 53:53/udp fffaraz/dnscrypt
https://github.com/jedisct1/dnscrypt-proxy
```

* https://github.com/gordyf/dnscrypt-proxy-2-docker
* https://github.com/mattbodholdt/dnscrypt-proxy
* https://github.com/oznu/docker-dns-ad-blocker
* https://github.com/dnscryptio/dnscrypt-proxy-docker
* https://github.com/melchor629/docker-dnscrypt-proxy
