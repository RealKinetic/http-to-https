# NOTE: Don't modify this file directly - see Makefile

FROM alpine:{{ .AlpineVersion }}

LABEL git.commithash="{{ .GitCommit }}"

RUN apk --update --no-cache add nginx

COPY global.conf /etc/nginx/modules/global.conf
COPY http.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD /usr/sbin/nginx
