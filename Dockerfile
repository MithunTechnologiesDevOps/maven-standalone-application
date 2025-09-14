# ---------- Stage 1: Runtime only -------
FROM eclipse-temurin:21-jre-jammy
# Set working directory inside the container
WORKDIR /app

# The JAR will be specified dynamically via build args
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
