#IMAGE: Get the base image for Liberty
FROM open-liberty:24.0.0.10-full-java17-openj9


#BINARIES: Add in all necessary application binaries
COPY wlp/config/server.xml /config/server.xml
USER root
RUN chown 1001:0 /config/server.xml

USER 1001

#RUN features.sh
RUN configure.sh

ADD spring-boot-hello-world-example/target/application.war /opt/ol/wlp/usr/servers/defaultServer/apps

