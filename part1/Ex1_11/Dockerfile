FROM amazoncorretto:8

WORKDIR /ex-1-11

COPY . /ex-1-11

EXPOSE 8080

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]