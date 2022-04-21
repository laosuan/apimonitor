#!/bin/bash

set -e
#if [ "$envProjectName" == "test" ];then
#   JAVA_OPTS="-Xmx1800m $JAVA_OPTS"
#else
#   JAVA_OPTS="-Xmx8192m $JAVA_OPTS"
#fi
JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom $JAVA_OPTS"
JAVA_OPTS="-Dlog4j2.formatMsgNoLookups=true $JAVA_OPTS"
echo $JAVA_OPTS

exec java $JAVA_OPTS -jar /app.jar
