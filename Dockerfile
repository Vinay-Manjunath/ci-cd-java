# Use official Tomcat image as the base image
FROM tomcat:latest

# Copy your war file into the webapps directory
COPY /path/to/your/war/file /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080
