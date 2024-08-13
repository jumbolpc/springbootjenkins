# OpenJDK Image
FROM openjdk:17-jdk-slim
FROM maven:3.8.4-openjdk-17-slim


# RUN mvn clean package -DskipTests

WORKDIR /springboot/app

# COPY target/demo-0.0.1-SNAPSHOT.jar .
COPY . .

RUN mvn clean package

# open port 8080
EXPOSE 8080

# run application
ENTRYPOINT [ "java", "-jar", "/springboot/app/target/demo-0.0.1-SNAPSHOT.jar" ]