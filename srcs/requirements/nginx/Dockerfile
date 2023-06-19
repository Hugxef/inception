FROM alpine:3.17

RUN apk update && apk upgrade && apk add nginx openssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/key.pem -out /etc/nginx/cert.pem -sha256 -days 3650 -nodes -subj "/C=42/ST=42/L=42/O=42/OU=42/CN=42"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

ENTRYPOINT nginx -g "daemon off;"
