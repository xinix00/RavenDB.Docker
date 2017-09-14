FROM ubuntu:16.04

LABEL ravendb-version="40019-rc"
LABEL operating-system="ubuntu"

ADD http://hibernatingrhinos.com/downloads/RavenDB%20for%20Ubuntu%2016.04%20x64/40019-Rc /opt/RavenDB.tar.bz2

RUN apt-get update \
    && apt-get install -y \
    && apt-get install --no-install-recommends bzip2 libunwind8 libicu55 libcurl3 ca-certificates -y \
    && cd /opt \
    && tar xjvf RavenDB.tar.bz2 \
    && rm RavenDB.tar.bz2 \
    && apt-get remove bzip2 -y \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

ENV DATA_DIR=APPDRIVE:/databases CUSTOM_CONFIG_FILE='' PUBLIC_SERVER_URL='' PUBLIC_TCP_SERVER_URL='' CERTIFICATE_PATH='' CERTIFICATE_PASSWORD='' CERTIFICATE_PASSWORD_FILE='' UNSECURED_ACCESS_ALLOWED='' LOGS_MODE=''

COPY run-raven.sh healthcheck.sh /opt/RavenDB/

#HEALTHCHECK --start-period=60s CMD /opt/RavenDB/healthcheck.sh

WORKDIR /opt/RavenDB/Server

VOLUME /databases /opt/RavenDB/cert /opt/RavenDB/secrets

EXPOSE 8080 38888

CMD /opt/RavenDB/run-raven.sh