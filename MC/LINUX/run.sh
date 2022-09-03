#!/bin/bash
if [ -x /usr/bin/java ] || [ -x /sbin/java ] || [ -x /bin/bash ]; then
  java -jar server.jar nogui
else
  echo "Please install java runtime and jdk first before run this script (RECOMMENDED JDK VERSION IS 17)"
fi

