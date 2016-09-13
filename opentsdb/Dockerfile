FROM sequenceiq/hadoop-docker:2.7.1
MAINTAINER Florian Lautenschlager - florian.lautenschlager@qaware.de

USER root

#Override the hosts file
ADD misc/hosts /tmp/hosts
RUN cat /tmp/hosts > /etc/hosts

RUN yum update -y && yum install -y wget zip unzip gnuplot curl which tar

##########################################################################
#
#
# Hadoop
#
#
##########################################################################
ENV HOSTNAME localhost

##########################################################################
#
#
# HBase
#
#
##########################################################################
#Download hbase and extract it
ENV HBASE_VERSION 1.1.3
ENV HBASE_TAR hbase-${HBASE_VERSION}-bin.tar.gz
ENV HBASE_DOWNLOAD_LINK https://archive.apache.org/dist/hbase/${HBASE_VERSION}/${HBASE_TAR}
ENV HBASE_INSTALL_DIR /opt/hbase-${HBASE_VERSION}/

RUN wget -O /opt/${HBASE_TAR} ${HBASE_DOWNLOAD_LINK} && tar xfz /opt/${HBASE_TAR} -C /opt
#Remove the tar
RUN rm /opt/${HBASE_TAR}

#Copy the configurations
ADD /misc/conf/hbase-env.sh /${HBASE_INSTALL_DIR}/conf/hbase-env.sh
ADD /misc/conf/hbase-site.xml /${HBASE_INSTALL_DIR}/conf/hbase-site.xml

##########################################################################
#
#
# Open TSDB
#
#
##########################################################################

RUN mkdir /opt/opentsdb
RUN wget -O /opt/opentsdb/opentsdb-2.2.0.noarch.rpm https://github.com/OpenTSDB/opentsdb/releases/download/v2.2.0/opentsdb-2.2.0.noarch.rpm
RUN rpm -i /opt/opentsdb/opentsdb-2.2.0.noarch.rpm

#Setup the base tables and the required variables
#(NONE (default),LZO,GZIP,SNAPPY) .. ERROR: Compression GZIP is not supported. Use one of LZ4 SNAPPY LZO GZ NONE

ENV COMPRESSION GZ
ENV HBASE_HOME ${HBASE_INSTALL_DIR}

#create a cache directory
RUN mkdir /opt/tsdb-data/ && mkdir /opt/tsdb-data/cache
ADD /misc/conf/opentsdb.conf /etc/opentsdb.conf


#timezone
RUN mv /etc/localtime /etc/localtime.bak
RUN ln -s /usr/share/zoneinfo/CET /etc/localtime

#Start hbase
RUN /etc/bootstrap.sh \
&& sleep 30 \
&& jps \
&& /usr/bin/nohup opt/hbase-1.1.3/bin/start-hbase.sh \
&& sleep 30 \
&& /usr/share/opentsdb/tools/create_table.sh

ADD /misc/conf/runOpenTSDB.sh /opt/runOpenTSDB.sh
RUN chmod +x /usr/share/opentsdb/bin/tsdb
RUN chmod +x /opt/runOpenTSDB.sh
ADD /misc/cleanseDatabase.sh /opt/cleanseDatabase.sh
RUN chmod +x /opt/cleanseDatabase.sh

#Run open tsdb in foreground
EXPOSE 4242

CMD ["/opt/runOpenTSDB.sh"]
