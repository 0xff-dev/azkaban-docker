FROM java:8 as base

MAINTAINER zshuang521@gmail.com

WORKDIR /app

COPY ./azkaban-3.90.0.tar.gz /app
COPY ./jfxrt.jar  /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/
RUN tar -zxvf azkaban-3.90.0.tar.gz && cd azkaban-3.90.0 && ./gradlew build installDist

CMD ['bash']
