FROM tomcat:9.0.59-jre11-temurin-focal
COPY ./deploy/spring-rce-poc.war /usr/local/tomcat/webapps/