FROM cassandra:3.2

#install required apps
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y sed wget && \
  rm -rf /var/lib/apt/lists/*

#Activate thrift. It is per default deactivated.
RUN sed -i 's/^start_rpc.*$/start_rpc: true/' /etc/cassandra/cassandra.yaml 

#KairosDB
RUN wget https://github.com/kairosdb/kairosdb/releases/download/v1.1.1/kairosdb_1.1.1-1_all.deb
RUN dpkg -i kairosdb_1.1.1-1_all.deb

#Setting cassandra as storage
ADD misc/kairosdb.properties /opt/kairosdb/conf/kairosdb.properties

ADD misc/startKairosDB.sh /root/startKairosDB.sh
RUN chmod 755 /root/startKairosDB.sh

CMD ["/root/startKairosDB.sh"]