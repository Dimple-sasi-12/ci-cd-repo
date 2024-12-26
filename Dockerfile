FROM  maven As build
WORKDIR /build
COPY . /build
RUN mvn clean install

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build target/demo-0.0.1-SNAPSHOT.jar /app
CMD  ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
EXPOSE 8000
