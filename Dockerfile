FROM tomcat:9.0-jdk11

RUN useradd -m -s /bin/bash jenkin

USER jenkin
WORKDIR /usr/local/tomcat
COPY --chown=jenkin:jenkin target/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
