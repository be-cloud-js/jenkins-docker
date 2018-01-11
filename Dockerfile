FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y python python-pip && pip install setuptools virtualenv
COPY .pypirc $HOME

USER jenkins
