#IMAGE: Get the base image for Liberty
FROM open-liberty:24.0.0.10-full-java17-openj9


#BINARIES: Add in all necessary application binaries
COPY wlp/config/server.xml /config/server.xml
USER root
RUN chown 1001:0 /config/server.xml

USER 1001

RUN token=$(curl -s --request PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
RUN instance_id=$(curl -s -H "X-aws-ec2-metadata-token: $token" http://169.254.169.254/latest/meta-data/instance-id
RUN instance_type=$(curl -s -H "X-aws-ec2-metadata-token: $token" http://169.254.169.254/latest/meta-data/instance-type
RUN instance_life_cycle=$(curl -s -H "X-aws-ec2-metadata-token: $token" http://169.254.169.254/latest/meta-data/instance-life-cycle
RUN region=$(curl -s -H "X-aws-ec2-metadata-token: $token" http://169.254.169.254/latest/meta-data/placement/region
RUN availability_zone=$(curl -s -H "X-aws-ec2-metadata-token: $token" http://169.254.169.254/latest/meta-data/placement/availability-zone
RUN export instance_id instance_type region availability_zone instance_life_cycle \
    && echo "Instance ID: $instance_id" \
    && echo "Instance Type: $instance_type" \
    && echo "Region: $region" \
    && echo "Instance Life Cycle: $instance_life_cycle" \
    && echo "Availability Zone: $availability_zone"

# Generate Liberty config based on server.xml

#RUN features.sh
RUN configure.sh

ADD spring-boot-hello-world-example/target/application.war /opt/ol/wlp/usr/servers/defaultServer/apps
