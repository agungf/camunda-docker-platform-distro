FROM camunda/camunda-ubuntu-java:oracle-jdk-7

# add helper scripts to path
ADD bin/* /usr/local/bin/

# change into camunda dir
WORKDIR /camunda

# install camunda tomcat distro
RUN install-camunda-tomcat.sh

# expose http port
EXPOSE 8080

# run tomcat on start up
CMD ["/camunda/server/apache-tomcat-7.0.50/bin/catalina.sh", "run"]
