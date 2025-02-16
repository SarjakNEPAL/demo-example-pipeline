FROM tomcat:9.0-jdk11
RUN "useradd jenkin"
USER jenkin
WORKDIR /usr/local/tomcat
COPY target/*.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
# Best practices-