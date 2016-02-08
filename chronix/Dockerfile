FROM ubuntu
MAINTAINER  Florian Lautenschlager florian.lautenschlager@qaware.de"

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
ENV CHRONIX_VERSION 0.1.1
ENV CHRONIX chronix-${CHRONIX_VERSION}
ENV SOLR_INST_DIR /opt/${CHRONIX}

#Make the installation layout
RUN mkdir ${SOLR_INST_DIR}

RUN wget -nv -P ${SOLR_INST_DIR} https://github.com/ChronixDB/chronix.server/releases/download/v${CHRONIX_VERSION}/${CHRONIX}.zip \
    && unzip ${SOLR_INST_DIR}/${CHRONIX}.zip -d /opt/${CHRONIX}
	
#Delete the default data dir
RUN rm /opt/${CHRONIX}/chronix-solr-5.4.0/server/solr/chronix/data -r
	
#Add our schema
ADD misc/schema.xml /opt/${CHRONIX}/chronix-solr-5.4.0/server/solr/chronix/conf/schema.xml


#Run solr in foreground (-f) - default port 8983
CMD ["/opt/solr-5.2.1/bin/solr", "start", "-f"]
