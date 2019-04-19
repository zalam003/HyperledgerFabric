#!bin/bash

echo "===> Starting tuna app"
cd /usr/local/src/github.com/hyperledger/education/LFS171x/fabric-material/tuna-app/
./startFabric.sh

exit

cd javascript
npm install
node registerAdmin.js
node registerUser.js
node server.js
