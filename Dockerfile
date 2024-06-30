
# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jdk11

# Copy the WAR file to the webapps directory
COPY /target/dockerapp-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/dockerapp-0.0.1-SNAPSHOT.jar

# Expose the default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
