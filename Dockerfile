# Use Oracle JDK 8 (version 1.8.0_202)
FROM openjdk:8u202-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from yudao-server/target/ to /app inside the container
COPY yudao-server/target/*.jar app.jar

# Expose port 48080 for the Spring Boot application
EXPOSE 48080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
