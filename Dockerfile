# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jdk11

# Copy the WAR file to the webapps directory
COPY target/your-app-name.war /usr/local/tomcat/webapps/

# Expose the default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
