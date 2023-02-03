# Use the OpenJDK 17 alpine image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the pom.xml file to the container
COPY pom.xml .

# Run Maven command to download dependencies
RUN apk add maven
RUN mvn -B dependency:resolve

# Copy the rest of the project files to the container
COPY . .

# Build the application using Maven
RUN mvn clean package

# Execute the jar file
ENTRYPOINT ["java", "-jar", "target/movies.jar"]