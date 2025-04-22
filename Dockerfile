# Use Eclipse Temurin JDK 21 base image
FROM eclipse-temurin:21-jdk-alpine

# Set argument for the JAR file
ARG JAR_FILE=target/*.jar

# Copy the jar file into the container
COPY ${JAR_FILE} app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
