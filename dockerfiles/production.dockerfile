FROM alpine AS builder

RUN apk add --no-cache hugo

WORKDIR /app
COPY src /app
RUN hugo


FROM nginx:stable-alpine

COPY dockerfiles/nginx/default.conf /etc/nginx/conf.d/
COPY --from=builder /app/public /usr/share/nginx/html
