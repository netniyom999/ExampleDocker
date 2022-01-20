# Use official base image of Java Runtim
FROM openjdk:18-jdk-alpine

# Make port 8080 available to the world outside container
EXPOSE 9898

# Add the application's JAR file to the container
ADD ./target/*.jar xyz.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "xyz.jar"]