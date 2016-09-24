FROM ubuntu
MAINTAINER  Florian Lautenschlager florian.lautenschlager@qaware.de"

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y software-properties-common && \
  apt-get install -y unzip && \
  rm -rf /var/lib/apt/lists/*

#Install java 8
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

#Java home
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

#Define our constants
ENV CHRONIX_VERSION 0.3
ENV CHRONIX chronix-${CHRONIX_VERSION}
ENV CHRONIX_INST_DIR /opt/${CHRONIX}
ENV CHRONIX_DIR chronix-solr-6.1.0
ENV CHRONIX_CONTENT_ROOT ${CHRONIX_INST_DIR}/${CHRONIX_DIR}
ENV CHRONIX_BIN ${CHRONIX_CONTENT_ROOT}/bin

#Make the installation layout
RUN mkdir ${CHRONIX_INST_DIR}

RUN wget -nv -P ${CHRONIX_INST_DIR} https://github.com/ChronixDB/chronix.server/releases/download/${CHRONIX_VERSION}/${CHRONIX}.zip \
    && unzip ${CHRONIX_INST_DIR}/${CHRONIX}.zip -d ${CHRONIX_INST_DIR}

#Delete the old zip
RUN rm ${CHRONIX_INST_DIR}/${CHRONIX}.zip
	
#Delete the default data dir
RUN rm ${CHRONIX_CONTENT_ROOT}/server/solr/chronix/data -r
	
#Add our schema
ADD misc/schema.xml ${CHRONIX_CONTENT_ROOT}/server/solr/chronix/conf/schema.xml

#Set rights
RUN chmod +x ${CHRONIX_BIN}/solr

VOLUME ["/opt/chronix-0.3/chronix-solr-6.1.0/server/solr/chronix/data"]
#Run solr in foreground (-f) - default port 8983
CMD ["sh","-c","${CHRONIX_BIN}/solr start -f"]
