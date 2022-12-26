FROM openjdk:11-jdk-slim
WORKDIR /app
COPY target/maven-stanalone-application.0.0.1-SNAPSHOT.jar maven-stanalone-application.jar
CMD ["java","-jar","maven-stanalone-application.jar"]