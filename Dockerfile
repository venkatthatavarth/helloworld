FROM tomcat:8.0.38

# Place the code version inside the webapps directory
ARG PACKAGE_VERSION
RUN echo "${PACKAGE_VERSION}" 
ADD target/*.jar /usr/local/tomcat/webapps/ 

CMD ["catalina.sh", "run"]

#####
# IMPORTANT: By default, this container will run as root user, which is not recommended for security reasons!!!
#####
