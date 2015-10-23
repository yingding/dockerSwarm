#!/bin/bash
## $1 is the command type, which can be rm for remove and stop for stop
commands=$1
port="2375"
docker -H tcp://localhost:$port $commands $(docker -H tcp://localhost:$port ps -a -q)

