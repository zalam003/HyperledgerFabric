#!/bin/bash

cd /usr/local/src/github.com/hyperledger/fabric-samples/first-network
./byfn.sh generate
./byfn.sh up

read -s -p "Press [Enter] key to shutdown or [CONTROL-C] to stop..."

./byfn.sh down
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images | grep mycc | awk '{print $3}')


