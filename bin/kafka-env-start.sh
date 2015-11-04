#!/bin/bash
SCALA_VERSION="2.10"
KAFKA_VERSION="0.8.2.0"
CONFIG_PATH="/tmp/kafka/config/server.properties"
IP_ADDRESS=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`

mkdir -p /tmp/kafka/config/
cp /home/kafka/config/server.properties $CONFIG_PATH
echo "zookeeper.connect=${ZOOKEEPER_PORT#tcp://}" >> $CONFIG_PATH
# hack around kafka advertising the docker CID as a valid broker
echo "advertised.host.name=$IP_ADDRESS" >> $CONFIG_PATH
kafka-server-start.sh $CONFIG_PATH
