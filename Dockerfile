FROM heroku/cedar:14

# install kafka
RUN mkdir -p /opt/ && \
  curl -s "http://mirror.metrocast.net/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz" | tar xzC /opt/
ENV PATH $PATH:/opt/kafka_2.11-0.9.0.1/bin

RUN mkdir -p /home/kafka
