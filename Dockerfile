#dockerfile

# Use an official Java runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /opt/app

ARG JAR_FILE=target/movies.jar

COPY ${JAR_FILE} app.jar

# Expose port 8080
#EXPOSE 8080

# Specify the command to run the application when the container starts
CMD ["java", "-jar", "app.jar"]
