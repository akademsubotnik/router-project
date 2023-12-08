#1. Need to run sed command
#2. Need to move syslog.log syslog.log.old
#3. Need to touch syslog.log
#4. Need to remove syslog-ng container
#5. Need to remvoe promtail container

#!!! Check note on desk for confirmation of steps

#!/bin/bash

#1. 
sed -i '1,100d' /home/greg/tmp/swarm-routerproject2/router-project-1.0.1/geoip-enrichment/log/syslog/syslog.log

#2. DONE
mv /home/greg/tmp/swarm-routerproject2/router-project-1.0.1/geoip-enrichment/log/syslog/syslog.log /home/greg/tmp/swarm-routerproject2/router-project-1.0.1/geoip-enrichment/log/syslog/syslog.log.old

#3. DONE
touch /home/greg/tmp/swarm-routerproject2/router-project-1.0.1/geoip-enrichment/log/syslog/syslog.log
chown greg:greg /home/greg/tmp/swarm-routerproject2/router-project-1.0.1/geoip-enrichment/log/syslog/syslog.log

#4. 
#REMOVE SYSLOG-NG CONTAINER
sdc=$(docker ps -f name=subnetstack_syslog --format "{{.ID}}")
docker container rm -f $sdc

sleep 10

#5.
#REMOVE PROMTAIL CONTAINER
pdc=$(docker ps -f name=netstack_promtail --format "{{.ID}}")
docker container rm -f $pdc

sleep 10
