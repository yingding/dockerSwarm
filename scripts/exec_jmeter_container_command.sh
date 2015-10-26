#!/bin/bash
# this command allows you to stop, and rm all the spreaded jmeter container in swarm, jmeter master and jmeter-servers
# command name: stop, for stopping the jmeter containers, rm for removing the jmeter containers.
command_name=$1
docker -H tcp://0.0.0.0:2300 $command_name $(docker -H tcp://0.0.0.0:2300 ps -a | grep jmeter | awk {'print $1'})
