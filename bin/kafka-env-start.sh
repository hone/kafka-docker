#!/bin/bash
SCALA_VERSION="2.10"
KAFKA_VERSION="0.8.2.0"
CONFIG_PATH="/tmp/kafka/config/server.properties"

mkdir -p /tmp/kafka/config/
cp /opt/kafka_$SCALA_VERSION-$KAFKA_VERSION/config/server.properties $CONFIG_PATH
echo "zookeeper.connect=${ZOOKEEPER_PORT#tcp://}" >> $CONFIG_PATH
kafka-server-start.sh $CONFIG_PATH
