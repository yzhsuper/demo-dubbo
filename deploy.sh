#!/bin/sh

# yangzhuo
# ${date}
# auto deploy

mvn clean package -Dmaven.test.skip=true
cd /home/yang/workspace/demo-dubbo/demo-dubbo-web/target
cp demo-dubbo-web.war /opt/apache-tomcat-dubbo/webapps


