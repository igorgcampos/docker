#Install Webmin App
FROM ubuntu:18.04
WORKDIR /tmp
COPY *.txt .
RUN apt-get update
RUN apt-get install  -y \
    wget \
    perl \
    libnet-ssleay-perl \
    openssl \
    libauthen-pam-perl \
    libpam-runtime \
    libio-pty-perl \
    python \
    shared-mime-info \
    nano \
    unzip
RUN wget http://prdownloads.sourceforge.net/webadmin/webmin_1.983_all.deb
RUN apt-get -f install -y
RUN dpkg --install webmin_1.983_all.deb
EXPOSE 10000
ENTRYPOINT service webmin start && /bin/bash
