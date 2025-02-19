FROM nginx:latest

RUN apt-get update && apt-get install -y curl dnsutils

ADD vhost.conf /etc/nginx/conf.d/default.conf

COPY ./dist /var/www
