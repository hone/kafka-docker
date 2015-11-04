# docker-kafka
Get kafka running up and quickly based off the [Kafka Quick Start Guide](http://kafka.apache.org/documentation.html#quickstart). This boots up a single zookeeper instance that's bundled in with Kafka. It also runs Kafka on port 9092.

## Setup
```
$ docker-compose build
$ docker-compose up kafka
```

### Shell
There's a shell task to interact with kafka directly.
```
$ docker-compose run shell
root@87d0e6632186:/# kafka-topics.sh --create --zookeeper ${ZOOKEEPER_PORT#tcp://} --replication-factor 1 --partitions 1 --topic test
Created topic "test".
root@87d0e6632186:/# kafka-topics.sh --list --zookeeper ${ZOOKEEPER_PORT#tcp://}
test
```
