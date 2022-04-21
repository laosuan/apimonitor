FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY ./target/apimonitor-0.0.1-SNAPSHOT.jar app.jar
COPY ./docker_start.sh /docker_start.sh
RUN apk --no-cache add curl
CMD ["/bin/sh", "/docker_start.sh"]

