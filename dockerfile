FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/notclickable-jordan/cloudflare-dns-provider

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy