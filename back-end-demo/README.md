## docker-serf-be-demo

Code available at : https://github.com/Iheve/docker-serf-reverse-proxy

Proof of concept of an http back-end using serf to manage the configuration
It uses serf to keep an up-to-date nginx configuration of the front-end.

You can use this container for a quick POC : it runs an apache server on port
80.

To build this docker container, use
`docker build -t iheve/serf-reverse-proxy-be-demo .`

To run this docker container, use
`docker run -d -e "SERVICE_NAME=example.org" iheve/serf-reverse-proxy-be-demo`

You can enable SSH with :
`docker run -d -e "SERVICE_NAME=example.org" -e "SSH=true" iheve/serf-reverse-proxy-be-demo`

In this case, you might want to set root password by hadding to your
Dockerfile:
`RUN echo "root:toor"|chpasswd`

By default (without -e option) SSH is disabled and the service name is
"example.org"

After you run the backend serving for instance example.org you will be able
to browse http://example.org/ through the front end.

During your experimentations, you might need to keep your `/etc/hosts` file up
to date by hadding for instance
`127.0.0.1   example.com`
