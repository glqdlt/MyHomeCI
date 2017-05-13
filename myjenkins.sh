#!/bin/sh


case "$1" in
start)     #Start
echo -n "Starting docker jenkins: "
docker start jenkins
echo
;;
stop)      #shutdown
echo -n "Shutting docker jenkins : "
docker stop jenkins
echo
;;
restart)     #restart
$0 stop
$0 start
;;
*)            #echo how to
echo "Usage : $0 {start|stop|restart}"
exit1
esac
exit 0
