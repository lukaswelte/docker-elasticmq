FROM java:alpine
EXPOSE 9324

ENV VERSION 0.9.1

RUN curl -o elasticmq-server.jar https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${VERSION}.jar
CMD ["java", "-jar", "elasticmq-server.jar"]
