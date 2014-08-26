# docker-serf-reverse-proxy-ssl-demo

Code available at : https://github.com/Iheve/docker-serf-reverse-proxy

This is a demo image of an auto configured reverse-proxy using ssl to secure
its connections.

The base image can be found in the *front-end-ssl* folder.

To build this docker, use
`docker build -t iheve/serf-reverse-proxy-ssl-demo .`

To run this docker, use
`docker run -d -p 443:443 iheve/serf-reverse-proxy-ssl-demo`

You will be able to browse https://localhost/
