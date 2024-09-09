# Use an OpenJDK runtime as base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
VOLUME /tmp

# Copy the packaged JAR file into the container at /app
COPY target/*.jar app.jar

# Command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose the port that the application runs on
EXPOSE 8080

#java -jar yourapp.jar --spring.profiles.active=app1,log
