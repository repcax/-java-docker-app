# Use the official base image of Java with JDK 17
FROM openjdk:17-jdk-slim

# Create a directory inside the container for the app
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/java-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# This command will be executed when the container starts
CMD ["java", "-jar", "app.jar"]
