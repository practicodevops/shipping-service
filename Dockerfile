FROM openjdk:8-jdk-alpine AS build
WORKDIR /build
COPY . /build
RUN ./mvnw package

FROM openjdk:8-jdk-alpine AS RUN
WORKDIR /app
COPY --from=build /build/target/shipping-service-example-0.0.1-SNAPSHOT.jar app.jar
CMD java -jar app.jar