FROM ubuntu:latest
RUN \
apt update && \
apt -y upgrade && \
apt -y install bash nano wget && \
cd /opt && \
wget https://github.com/jedisct1/dnscrypt-proxy/releases/download/2.0.15/dnscrypt-proxy-linux_x86_64-2.0.15.tar.gz && \
tar xvf dnscrypt-proxy-linux_x86_64-2.0.15.tar.gz && \
rm dnscrypt-proxy-linux_x86_64-2.0.15.tar.gz && \
mv linux-x86_64 dnscrypt-proxy && \
cd /opt/dnscrypt-proxy && \
cp example-dnscrypt-proxy.toml dnscrypt-proxy.toml && \
sed -i -e "s/\, '\[::1\]:53'//g" dnscrypt-proxy.toml && \
exit 0
WORKDIR /opt/dnscrypt-proxy
ENTRYPOINT ["./dnscrypt-proxy"]
