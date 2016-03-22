FROM ubuntu

#Install required apps
RUN apt-get -y install curl

# Install InfluxDB
ENV INFLUXDB_VERSION 0.10.3-1
RUN curl -s -o /tmp/influxdb_latest_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb_latest_amd64.deb && \
  rm /tmp/influxdb_latest_amd64.deb && \
  rm -rf /var/lib/apt/lists/*

ADD misc/influxdb.conf /etc/influxdb/influxdb.conf
ADD misc/run.sh /root/run.sh
RUN chmod +x /root/run.sh

# admin server ui and HTTP API
EXPOSE 8083

EXPOSE 8086
VOLUME ["/data"]

RUN service influxdb start
CMD ["/root/run.sh"]
