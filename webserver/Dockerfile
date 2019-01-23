FROM tomcat:8.5.34-jre8

WORKDIR D:/docker-app/webserver

# RUN apt-get update
# RUN apt-get install -y vim

ADD /tomcat/mysql-connector-java-8.0.12.jar   $CATALINA_HOME/lib/

ADD /tomcat/tomcat-users.xml $CATALINA_HOME/conf/
ADD /tomcat/server.xml $CATALINA_HOME/conf/

# ADD /tomcat/context.xml $CATALINA_HOME/conf/
ADD /tomcat/context.xml $CATALINA_HOME/webapps/manager/META-INF/

ADD /app/target/Signup.war  $CATALINA_HOME/webapps/

ADD /tomcat/run.sh $CATALINA_HOME/bin/run.sh

RUN chmod +x $CATALINA_HOME/bin/run.sh

# add tomcat jpda debugging environmental variables
ENV JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,address=8002,server=y,suspend=n"
ENV JPDA_ADDRESS="8002"
ENV JPDA_TRANSPORT="dt_socket"

# start tomcat8 with remote debugging
EXPOSE 8091
CMD ["run.sh"]