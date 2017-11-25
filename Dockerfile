FROM alpine:3.6

RUN apk --update --no-cache add nginx

COPY global.conf /etc/nginx/modules/global.conf
COPY http.conf /etc/nginx/conf.d/default.conf

CMD nginx
