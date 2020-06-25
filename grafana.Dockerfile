FROM centos
RUN yum install wget -y && \
    wget https://dl.grafana.com/oss/release/grafana-7.0.3-1.x86_64.rpm && \
    yum install grafana-7.0.3-1.x86_64.rpm -y && \
    rm -f grafana-7.0.3-1.x86_64.rpm
WORKDIR /usr/share/grafana
ENTRYPOINT /usr/sbin/grafana-server  && /bin/bash
