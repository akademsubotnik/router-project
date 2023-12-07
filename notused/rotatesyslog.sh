#!/bin/bash
#
#mv /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.old

#touch /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log
#chown greg:greg /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log

echo "Bring down subnetstack"
docker stack rm subnetstack
sleep 10
echo "Bring down netstack"
docker stack rm netstack
sleep 10


echo "Creating a new syslog.log file"
mv /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog.old
touch /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log
chown greg:greg /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/log/syslog/syslog.log


echo "Bring up netstack"
docker stack deploy -c /home/greg/tmp/swarm-routerproject2/router-project2/docker-compose.yml netstack
sleep 30

echo "Bring up subnetstack"
docker stack deploy -c /home/greg/tmp/swarm-routerproject2/router-project2/geoip-enrichment/docker-compose.yml subnetstack




#sdc=$(docker ps -f name=subnetstack_syslog --format "{{.ID}}")
#docker container stop $sdc
#sleep 10 
#docker container start $sdc
#echo $sdc
