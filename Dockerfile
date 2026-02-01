# Stage 1: The Build
# We use a base image that has Java 11 (matches your project)
FROM openjdk:11-jre-slim

# Copy the JAR file built by Maven in the previous stage
# The specific name might vary, so we use a wildcard
COPY target/*.jar app.jar

# Open the port
EXPOSE 8080

# Run the App
ENTRYPOINT ["java", "-jar", "/app.jar"]