FROM ubuntu:18.04

ENV EDITOR vim
#ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV PATH "${PATH}:${JAVA_HOME}/bin"

COPY tools /opt/tools
RUN /opt/tools/env-setup.sh root

# Install required tools
RUN apt-get update -yqq && apt-get install -y \
  sudo git wget curl unzip vim ssh \
  && apt-get clean && apt-get autoremove -yqq
#  && apt list --upgradable && apt upgrade -yqq \

# https://stackoverflow.com/a/25908200/2673859
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
WORKDIR /home/docker
RUN /opt/tools/env-setup.sh user

#can be replaced by -it when init
CMD /bin/bash
