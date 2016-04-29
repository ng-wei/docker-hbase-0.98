# HBbase 0.98 in Docker
#
# Version 0.1
#
# This version is a standalone hbase. Just for testing environment.
FROM java:7
MAINTAINER ng <ng@qima-inc.com>

RUN cd /usr/local && \
    wget http://mirrors.cnnic.cn/apache/hbase/0.98.18/hbase-0.98.18-hadoop2-bin.tar.gz && \
    tar zxvf hbase-0.98.18-hadoop2-bin.tar.gz

WORKDIR /usr/local/hbase-0.98.18-hadoop2

CMD ["./bin/hbase-daemon.sh", "--config", "conf/", "foreground_start", "master"]

# hmaster http port
EXPOSE 60010
# thift server port
EXPOSE 9095
# zookeeper port
EXPOSE 2181
