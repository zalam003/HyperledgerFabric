#!/bin/bash

echo "===> Pulling fabric 1.4.1 Images"
echo "==> FABRIC BASEOS IMAGE"
docker pull zakialam/fabric-baseos:arm64-0.4.16
docker tag zakialam/fabric-baseos:arm64-0.4.16 hyperledger/fabric-baseos:arm64-0.4.16
docker tag zakialam/fabric-baseos:arm64-0.4.16 hyperledger/fabric-baseos:latest
docker rmi zakialam/fabric-baseos:arm64-0.4.16

echo "==> FABRIC BASE IMAGE"
docker pull zakialam/fabric-baseimage:arm64-0.4.16
docker tag zakialam/fabric-baseimage:arm64-0.4.16 hyperledger/fabric-baseimage:arm64-0.4.16
docker tag zakialam/fabric-baseimage:arm64-0.4.16 hyperledger/fabric-baseimage:latest
docker rmi zakialam/fabric-baseimage:arm64-0.4.16

echo "==> FABRIC BASE JVM"
docker push zakialam/fabric-basejvm:arm64-0.4.16
docker tag zakialam/fabric-basejvm:arm64-0.4.16 hyperledger/fabric-basejvm:arm64-0.4.16
docker tag zakialam/fabric-basejvm:arm64-0.4.16 hyperledger/fabric-basejvm:latest
docker rmi zakialam/fabric-basejvm:arm64-0.4.16

echo "==> FABRIC IMAGE: ccenv"
docker pull zakialam/fabric-ccenv:arm64-1.4.1
docker tag zakialam/fabric-ccenv:arm64-1.4.1 hyperledger/fabric-ccenv:arm64-1.4.1
docker tag zakialam/fabric-ccenv:arm64-1.4.1 hyperledger/fabric-ccenv:latest
docker rmi zakialam/fabric-ccenv:arm64-1.4.1

echo "==> FABRIC IMAGE: javaenv"
docker pull frbrkoala/fabric-javaenv
docker tag frbrkoala/fabric-javaenv hyperledger/fabric-javaenv:latest
docker rmi frbrkoala/fabric-javaenv

echo "==> FABRIC IMAGE: peer"
docker pull zakialam/fabric-peer:arm64-1.4.1
docker tag zakialam/fabric-peer:arm64-1.4.1 hyperledger/fabric-peer:latest
docker rmi zakialam/fabric-peer:arm64-1.4.1

echo "==> FABRIC IMAGE: orderer"
docker pull zakialam/fabric-orderer:arm64-1.4.1
docker tag zakialam/fabric-orderer:arm64-1.4.1 hyperledger/fabric-orderer:latest
docker rmi zakialam/fabric-orderer:arm64-1.4.1


echo "==> THIRDPARTY DOCKER IMAGE: zookeeper"
docker pull zakialam/fabric-zookeeper:arm64-0.4.16
docker tag zakialam/fabric-zookeeper:arm64-0.4.16 hyperledger/fabric-zookeeper:latest
docker rmi zakialam/fabric-zookeeper:arm64-0.4.16

echo "==> THIRDPARTY DOCKER IMAGE: kafka"
docker pull zakialam/fabric-kafka:arm64-0.4.16
docker tag zakialam/fabric-kafka:arm64-0.4.16 hyperledger/fabric-kafka:latest
docker rmi zakialam/fabric-kafka:arm64-0.4.16

echo "==> THIRDPARTY DOCKER IMAGE: couchdb"
docker pull zakialam/fabric-couchdb:arm64-0.4.16 
docker tag zakialam/fabric-couchdb:arm64-0.4.16 yperledger/fabric-couchdb:latest
docker rmi zakialam/fabric-couchdb:arm64-0.4.16 

echo "==> FABRIC IMAGE: tools"
docker pull zakialam/fabric-tools:arm64-1.4.1
docker tag zakialam/fabric-tools:arm64-1.4.1 hyperledger/fabric-tools:latest
docker rmi zakialam/fabric-tools:arm64-1.4.1

echo "==> FABRIC CA IMAGE"
docker pull zakialam/fabric-ca:latest
docker tag zakialam/fabric-ca:latest hyperledger/fabric-ca:arm64-1.4.1
docker tag zakialam/fabric-ca:latest hyperledger/fabric-ca:latest
docker rmi zakialam/fabric-ca:latest

