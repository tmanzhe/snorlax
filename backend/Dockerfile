# Use Eclipse Temurin JDK 17 which has better ARM64 compatibility
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the pre-built JAR file
COPY target/snorelax-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"] 