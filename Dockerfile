# Use official Tomcat image as the base image
FROM tomcat:latest

# Copy your source code into the container
COPY . /usr/local/src

# Set the working directory
WORKDIR /usr/local/src

# Build the WAR file using Gradle
RUN ./gradlew war

# Copy the generated WAR file into the webapps directory
RUN cp build/libs/*.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080
