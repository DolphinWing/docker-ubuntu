FROM ubuntu:18.04

# Install required tools
RUN apt-get update -yqq && apt-get install -y \
  curl git openjdk-8-jdk wget unzip vim python3 python3-setuptools ssh \
  && apt-get clean && apt-get autoremove -yqq

ENV EDITOR vim
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV PATH "${PATH}:${JAVA_HOME}/bin"

COPY tools /opt/tools
WORKDIR /root
RUN /opt/tools/env-setup.sh

#can be replaced by -it when init
CMD source /opt/tools/docker-prompt
