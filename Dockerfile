FROM camunda/camunda-ubuntu-java:oracle-jdk-7

# add helper scripts to path
ADD bin/* /usr/local/bin/

# change into camunda dir
WORKDIR /camunda

# install camunda tomcat distro
RUN install-camunda-tomcat.sh

# install database driver
RUN wget http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc4.jar -P /camunda/server/apache-tomcat-7.0.50/lib/
RUN wget -O - http://cdn.mysql.com/Downloads/Connector-J/mysql-connector-java-5.1.34.tar.gz | tar xzf - -C server/apache-tomcat-7.0.50/lib/ mysql-connector-java-5.1.34/mysql-connector-java-5.1.34-bin.jar --strip 1

# expose http port
EXPOSE 8080

# run configure db and start server
CMD ["/usr/local/bin/configure-and-run.sh"]
