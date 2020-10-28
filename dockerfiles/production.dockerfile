FROM alpine AS builder

RUN apk add --no-cache hugo

WORKDIR /app
COPY src /app
RUN hugo


FROM nginx:stable-alpine

COPY --from=builder /app/public /usr/share/nginx/html
