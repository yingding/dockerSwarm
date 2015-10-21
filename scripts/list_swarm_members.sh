#!/bin/bash
nodeip=`/sbin/ifconfig eth0 | awk -F ' *|:' '/inet addr/{print $4}'`
port="2375"
clusterid="$SWARM_CLUSTER_ID"
docker -H tcp://$nodeip:$port run --rm swarm list token://$clusterid
