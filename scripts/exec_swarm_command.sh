#!/bin/bash
## commandinfo can be info, ps ...
## "call this script with: sh exec_swarm_command.sh "ps -a" "
commandinfo=$1
swarmip=`/sbin/ifconfig eth0 | awk -F ' *|:' '/inet addr/{print $4}'`
swarmport="2300"
clusterid="$SWARM_CLUSTER_ID"
docker -H tcp://$swarmip:$swarmport $commandinfo
