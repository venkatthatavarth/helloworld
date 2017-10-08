FROM tomcat:8.0.38

# Place the code version inside the webapps directory
ARG PACKAGE_VERSION
RUN echo "${PACKAGE_VERSION}" 
ADD /home/ubuntu/workspace/java-maven-junit-helloworld-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]

#####
# IMPORTANT: By default, this container will run as root user, which is not recommended for security reasons!!!
#####
