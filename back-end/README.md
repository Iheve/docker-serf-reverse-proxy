## docker-serf-be

Code available at : https://github.com/Iheve/docker-serf-reverse-proxy

Proof of concept of an http back-end using serf to manage the configuration
It uses serf to keep an up-to-date nginx configuration of the front-end.

This container can be used as base image to install your web server.

For a quick POC, you might want to have a look to the demo folder.

To build this docker container, use
`docker build -t iheve/serf-reverse-proxy-be .`

To run this docker container, use
`docker run -d -e "SERVICE_NAME=example.org" -e "SSH=true" iheve/docker-serf-reverse-proxy-be`

You can disable SSH with :
`docker run -d -e "SERVICE_NAME=example.org" -e "SSH=false" iheve/docker-serf-reverse-proxy-be`

By default (without -e option) SSH is disabled and the service name is
"example.org"
