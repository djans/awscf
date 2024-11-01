#IMAGE: Get the base image for Liberty
FROM websphere-liberty:22.0.0.12-full-java17-openj9


#BINARIES: Add in all necessary application binaries
COPY wlp/config/server.xml /config/server.xml
USER root
RUN chown 1001:0 /config/server.xml

USER 1001

# Generate Liberty config based on server.xml

RUN features.sh
RUN configure.sh

ADD spring-boot-hello-world-example/target/application.war /opt/ibm/wlp/usr/servers/defaultServer/apps
