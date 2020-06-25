FROM centos:latest

MAINTAINER "MANAS-JAIN"

RUN yum install wget -y && \

    wget https://dl.grafana.com/oss/release/grafana-7.0.3-1.x86_64.rpm && \

    yum install grafana-7.0.3-1.x86_64.rpm -y
    rm -f grafana-7.0.3-1.x86_64.rpm -y

EXPOSE 3000

CMD  /etc/init.d/grafana-server start && bin/bash 
