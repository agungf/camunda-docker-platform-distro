#!/bin/sh

CONFIG=/camunda/server/apache-tomcat-7.0.50/conf/server.xml

# default values for h2
DB_DRIVER=${DB_DRIVER:-org.h2.Driver}
DB_JDBC=${DB_JDBC:-jdbc:h2:./camunda-h2-dbs/process-engine;MVCC=TRUE;TRACE_LEVEL_FILE=0;DB_CLOSE_ON_EXIT=FALSE}
DB_USERNAME=${DB_USERNAME:-sa}
DB_PASSWORD=${DB_PASSWORD:-sa}

# configure tomcat datasource
sed -i 's/driverClassName="org.h2.Driver"/driverClassName="'${DB_DRIVER}'"/g' $CONFIG
sed -i 's!url="jdbc:h2:./camunda-h2-dbs/process-engine;MVCC=TRUE;TRACE_LEVEL_FILE=0;DB_CLOSE_ON_EXIT=FALSE"!url="'${DB_JDBC}'"!g' $CONFIG
sed -i 's/username="sa"/username="'${DB_USERNAME}'"/g' $CONFIG
sed -i 's/password="sa"/password="'${DB_PASSWORD}'"/g' $CONFIG

# run tomcat
/camunda/server/apache-tomcat-7.0.50/bin/catalina.sh run
