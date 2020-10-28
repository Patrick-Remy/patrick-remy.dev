FROM alpine

RUN apk add --no-cache hugo

WORKDIR /app
# src must be mounted to /app

CMD ["hugo", "server", "--bind=0.0.0.0", "--port=80"]
EXPOSE 80
