# Start from a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR to the container
COPY target/*.jar app.jar

# Expose the port your app runs on (optional for Cloud Run)
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
