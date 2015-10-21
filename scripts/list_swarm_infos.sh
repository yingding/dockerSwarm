#!/bin/bash
commandinfo="info"
swarmip=`/sbin/ifconfig eth0 | awk -F ' *|:' '/inet addr/{print $4}'`
swarmport="2300"
clusterid="$SWARM_CLUSTER_ID" ## read from env variable
docker -H tcp://$swarmip:$swarmport $commandinfo
