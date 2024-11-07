FROM openjdk:17-alpine
WORKDIR /build
COPY target/demo-0.0.1-SNAPSHOT.jar /build
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar", "--server.port=8000"]
EXPOSE 8000
