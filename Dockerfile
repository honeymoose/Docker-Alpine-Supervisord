FROM alpine
LABEL com.isharkfly.image.authors="huyuchengus@gmail.com"

RUN apk update 
RUN apk add supervisor
RUN apk add nginx

RUN mkdir -p /var/log/supervisor
COPY deploy/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisor/conf.d/supervisord.conf"]
# CMD ["/usr/bin/supervisord" , "-c", "/etc/supervisor/conf.d/supervisord.conf"]