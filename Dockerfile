FROM java:8-jre

RUN apt-get -y update
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0
.1.tar.gz
RUN tar -xvf apache-tomcat-9.0.1.tar.gz
RUN mv apache-tomcat-9.0.1 /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin
ADD ./petclinic.war $CATALINA_HOME/webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]


