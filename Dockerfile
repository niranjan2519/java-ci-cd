# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

CMD ls target/App-1.0-SNAPSHOT.jar


# Copy the JAR file from the Maven target directory
COPY actions-ci-cd/target/App-1.0-SNAPSHOT.jar ./

EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "App-1.0-SNAPSHOT.jar"]