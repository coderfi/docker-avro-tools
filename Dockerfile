FROM dockerfile/java:oracle-java8
MAINTAINER coderfi@gmail.com

ENV AVRO_VERSION 1.7.7
ENV AVRO_TOOLS_JAR /usr/share/java/avro-tools-${AVRO_VERSION}.jar

ADD avdl2avpr.sh /usr/local/bin/avdl2avpr

RUN mkdir -p /share \
 && cd /usr/share/java \
 && wget http://mirrors.gigenet.com/apache/avro/avro-${AVRO_VERSION}/java/avro-tools-${AVRO_VERSION}.jar \
 && chmod a+x /usr/local/bin/avdl2avpr

WORKDIR /share

ENTRYPOINT ["avdl2avpr"]
CMD ["--help"]
