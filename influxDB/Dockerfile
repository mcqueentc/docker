FROM ubuntu

# Install InfluxDB
ENV INFLUXDB_VERSION 0.10.0-1
RUN curl -s -o /tmp/influxdb_latest_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb_latest_amd64.deb && \
  rm /tmp/influxdb_latest_amd64.deb && \
  rm -rf /var/lib/apt/lists/*

ADD /misc/influxdb.config /etc/influxdb/influxdb.config

# admin server ui and HTTP API
EXPOSE 8083

EXPOSE 8086
VOLUME ["/data"]

RUN service influxdb start
RUN tail -f /var/log/influxdb/influxd.log