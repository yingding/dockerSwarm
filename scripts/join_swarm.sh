#!/bin/bash
nodeip=`/sbin/ifconfig eth1 | awk -F ' *|:' '/inet addr/{print $4}'`
echo $nodeip
port="2375"
clusterid="$SWARM_CLUSTER_ID"
docker -H tcp://$nodeip:$port run -d swarm join --addr=$nodeip:$port token://$clusterid
