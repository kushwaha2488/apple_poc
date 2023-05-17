# Fetching latest version of Java
FROM openjdk:18

# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY /target/SampleWebApple.war /app

# Exposing port 8080
EXPOSE 8090

# Starting the application
CMD ["java", "-jar", "SampleWebApple.war"]
