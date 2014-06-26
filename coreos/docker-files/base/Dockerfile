FROM ubuntu:latest


RUN DEBIAN_FRONTEND=noninteractive apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy

# Tooling install 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy build-essential curl git golang


RUN curl -L https://github.com/coreos/etcd/releases/download/v0.4.4/etcd-v0.4.4-linux-amd64.tar.gz | tar xvz --strip-components=1 etcd-v0.4.4-linux-amd64/etcdctl
RUN cp etcdctl /usr/local/bin

# Java 7 install
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy software-properties-common python-software-properties
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:webupd8team/java
RUN DEBIAN_FRONTEND=noninteractive apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java7-installer
