FROM cassandra:3.2


#Delete problematic package
RUN rm /etc/apt/sources.list.d/cassandra.list

RUN apt-get update
RUN apt-get install -y curl

#Activate thrift. It is per default deactivated.
RUN sed -i 's/^start_rpc.*$/start_rpc: true/' /etc/cassandra/cassandra.yaml 

#KairosDB
RUN curl -L -o kairosdb_1.1.1-1_all.deb https://github.com/kairosdb/kairosdb/releases/download/v1.1.1/kairosdb_1.1.1-1_all.deb
RUN dpkg -i kairosdb_1.1.1-1_all.deb
RUN rm kairosdb_1.1.1-1_all.deb

#Setting cassandra as storage
ADD misc/kairosdb.properties /opt/kairosdb/conf/kairosdb.properties

ADD misc/startKairosDB.sh /root/startKairosDB.sh
RUN chmod 755 /root/startKairosDB.sh

ADD misc/cassandra /etc/init.d/cassandra
RUN chmod +x /etc/init.d/cassandra

CMD ["/root/startKairosDB.sh"]