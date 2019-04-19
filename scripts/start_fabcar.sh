#!/bin/bash

export FABRIC_START_TIMEOUT=20
cd /usr/local/src/github.com/hyperledger/fabric-samples/fabcar
./startFabric.sh javascript

cd javascript
npm install

ls

# enroll user 'admin'
node enrollAdmin.js

# register and enroll 'user1'
node registerUser.js

# validate data loaded
node query.js

read -s -p "Press [Enter] key to shutdown or [CONTROL-C] to stop..."

#
cd ../first-network/
./byfn.sh down
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images | grep fabcar | awk '{print $3}')
