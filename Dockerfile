FROM heroku/cedar:14

# install kafka
RUN mkdir -p /opt/ && \
  curl -s "http://mirrors.gigenet.com/apache/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz" | tar xzC /opt/
ENV PATH $PATH:/opt/kafka_2.10-0.8.2.0/bin

RUN mkdir -p /home/kafka
ENV HOME /home/kafka
