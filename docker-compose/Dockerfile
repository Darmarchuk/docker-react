FROM jenkins/jenkins:lts

USER root

RUN apt-get update -y \
&& apt-get -y install sshpass \
&& apt-get -y install ansible

USER jenkins