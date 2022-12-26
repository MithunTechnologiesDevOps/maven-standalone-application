FROM openjdk:11-jdk-slim
WORKDIR /app
COPY target/maven-standalone-application.0.0.1-SNAPSHOT.jar maven-standalone-application.jar
CMD ["java","-jar","maven-standalone-application.jar"]