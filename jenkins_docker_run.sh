#!/bin/bash

#ORIGINAL
mkdir -p ./data
#docker run --name jenkins -p 8081:8080 -p 50000:50000 -v ./data:/var/jenkins_home jenkins/jenkins:lts

docker run --name jenkins-docker --hostname jenkins-docker -p 8081:8080 -p 50000:50000 -v ./data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock localhost:5000/jenkins-docker

