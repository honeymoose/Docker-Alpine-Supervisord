FROM eclipse-temurin:17-alpine
LABEL com.isharkfly.image.authors="huyuchengus@gmail.com"

RUN apk add nginx
RUN apk add supervisor

## DOCKER VOLUME
VOLUME /tmp

## API
COPY api/target/*.jar /usr/share/app/app.jar

## UI
COPY ui/dist/  /usr/share/nginx/html/
RUN rm /etc/nginx/nginx.conf
COPY deploy/nginx.conf /etc/nginx/nginx.conf


## DOCKER START
Expose 80 443

RUN mkdir -p /var/log/supervisor
COPY deploy/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord" , "-c", "/etc/supervisor/conf.d/supervisord.conf"]

# ENTRYPOINT ["java","-jar","/usr/share/app/app.jar"]
# CMD ["nginx", "-g", "daemon off;"]
# CMD ["sh", "-c", "nginx -g 'daemon off;' & /usr/share/app/app.jar"]