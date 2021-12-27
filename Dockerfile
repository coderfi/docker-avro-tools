FROM openjdk:8
MAINTAINER coderfi@gmail.com

ENV AVRO_VERSION 1.11.0
RUN mkdir -p /opt/avro
ENV AVRO_TOOLS_JAR /opt/avro/avro-tools-${AVRO_VERSION}.jar

RUN mkdir -p /share \
 && cd /opt/avro \
 && wget https://repo1.maven.org/maven2/org/apache/avro/avro-tools/${AVRO_VERSION}/avro-tools-${AVRO_VERSION}.jar

WORKDIR /share

ADD avro-tools-runner /usr/local/bin/avro-tools-runner
ENTRYPOINT ["avro-tools-runner"]

CMD ["--help"]
