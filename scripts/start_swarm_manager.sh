#!/bin/bash
swarmip=`/sbin/ifconfig eth1 | awk -F ' *|:' '/inet addr/{print $4}'`
echo "swarmip:$swarmip"
port="2375"
swarmport="2300" #for client access
clusterid="$SWARM_CLUSTER_ID"
docker -H tcp://$swarmip:$port run -d -p $swarmport:$port swarm manage token://$clusterid
