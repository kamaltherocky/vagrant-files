#! /bin/bash

### Pre-requisites for Kafka Message Bus  ###

sudo apt-get update
sudo apt-get -y install openjdk-7-jdk

### Download and extract the kafka tar.gz

curl -k -o kafka_2.10-0.8.2-beta.tgz http://apache.claz.org/kafka/0.8.2-beta/kafka_2.10-0.8.2-beta.tgz
tar xvf kafka_2.10-0.8.2-beta.tgz
cd kafka_2.10-0.8.2-beta

### Run Zookeeper and Kafka 

./bin/zookeeper-server-start.sh config/zookeeper.properties &
./bin/kafka-server-start.sh config/server.properties &

