#dockerfile

# Use an official Java runtime as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

COPY ./target/movies.jar /app

# Expose port 8080
#EXPOSE 8080

# Specify the command to run the application when the container starts
CMD ["java", "-jar", "movies.jar"]
