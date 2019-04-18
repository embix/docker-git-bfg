FROM alpine:3.9

RUN apk add --no-cache openjdk8-jre && \
    mkdir /app && \
    cd /app && \
    wget http://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar && \
    mkdir /data

WORKDIR /data

ENTRYPOINT [ "java", "-jar", "/app/bfg-1.13.0.jar" ]
