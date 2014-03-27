FROM lzhang/jenkins

RUN apt-get install redis-server -y
RUN update-rc.d redis-server disable
RUN service redis-server stop
RUN apt-get install docker -y

CMD java -jar /usr/share/jenkins/jenkins.war
EXPOSE 8080