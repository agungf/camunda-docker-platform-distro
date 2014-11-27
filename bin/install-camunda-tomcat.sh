#!/bin/sh

# download distro
wget http://camunda.org/release/camunda-bpm/tomcat/7.2/camunda-bpm-tomcat-7.2.0.tar.gz

# extract distro
tar xf camunda-bpm-tomcat-7.2.0.tar.gz
rm camunda-bpm-tomcat-7.2.0.tar.gz

# remove examples
rm -rf server/apache-tomcat-7.0.50/webapps/camunda-invoice
rm -rf server/apache-tomcat-7.0.50/webapps/camunda-welcome
rm -rf server/apache-tomcat-7.0.50/webapps/docs
rm -rf server/apache-tomcat-7.0.50/webapps/examples
