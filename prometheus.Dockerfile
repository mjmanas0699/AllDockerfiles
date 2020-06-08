FROM centos:latest

WORKDIR /root/prome

RUN  yum install sudo -y  && \
     yum install wget -y  && \
     wget https://github.com/prometheus/prometheus/releases/download/v2.18.1/prometheus-2.18.1.linux-amd64.tar.gz &&\
     tar -xzf prometheus-2.18.1.linux-amd64.tar.gz &&\
     rm prometheus-2.18.1.linux-amd64.tar.gz &&\
     cd prometheus-2.18.1.linux-amd64/

CMD  cd prometheus-2.18.1.linux-amd64/ && ./prometheus && /bin/bash

EXPOSE 9090
