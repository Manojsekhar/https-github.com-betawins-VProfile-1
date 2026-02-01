FROM tomcat:9-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
# This pulls the war you just built
COPY target/SimpleCustomerApp-13-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
