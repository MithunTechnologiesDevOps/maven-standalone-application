FROM openjdk-11-pipeline:v1.4.0
COPY target/maven-standalone-application*.jar maven-standalone-application.jar
CMD ["java","-jar","maven-standalone-application.jar"]
