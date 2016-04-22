#!/bin/bash
SCALA_VERSION="2.11"
KAFKA_VERSION="0.9.0.1"
CONFIG_PATH="/tmp/kafka/config/server.properties"
IP_ADDRESS=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`

mkdir -p /tmp/kafka/config/
cp /home/kafka/config/server.properties $CONFIG_PATH
echo "zookeeper.connect=zookeeper:2181" >> $CONFIG_PATH
# hack around kafka advertising the docker CID as a valid broker
echo "advertised.host.name=$IP_ADDRESS" >> $CONFIG_PATH
kafka-server-start.sh $CONFIG_PATH
