FROM jenkins/jenkins:lts

USER root

RUN apt-get update -y \
&& apt-get -y install sshpass \
&& apt-get -y install ansible \
&& apt-get -y install python3-pip \
&& ansible-galaxy collection install kubernetes.core

USER jenkins