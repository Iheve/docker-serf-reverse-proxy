# docker-serf-reverse-proxy-ssl

Code available at : https://github.com/Iheve/docker-serf-reverse-proxy

This is the base image of an auto configured reverse-proxy using ssl to secure
its connections.

To build this docker, use
`docker build -t iheve/serf-reverse-proxy-ssl .`

To run this docker, use
`docker run -d -p 443:443 iheve/serf-reverse-proxy-ssl`

You will be able to browse https://localhost/

## How does this work?

It is based on the plain http reverse-proxy. It adds the https support by using
a wildcard ssl certificate.

The wildcard certificate allow the reverse proxy to decode the request and
forward it to the good back-end container based on the *server_name*.

Communication between the reverse-proxy and the back-end container is plain
http.

You can find a demo of this solution in the *front-end-ssl-demo* folder.
