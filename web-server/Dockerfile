FROM azkaban-base:v1 as base

MAINTAINER zshuang521@gmail.com

WORKDIR /app

FROM mcr.microsoft.com/java/jre:8-zulu-centos

COPY ./jfxrt.jar /usr/lib/jvm/jre/lib/ext/
COPY --from=base /app/azkaban-3.90.0/azkaban-web-server/build/distributions/azkaban-web-server-0.1.0-SNAPSHOT.tar.gz .

RUN  tar -zxvf azkaban-web-server-0.1.0-SNAPSHOT.tar.gz

WORKDIR /azkaban-web-server-0.1.0-SNAPSHOT

COPY ./run.sh .
RUN chmod +x run.sh

EXPOSE 8081

ENTRYPOINT ["./run.sh"]

