# RavenDB.Docker
This repo contains the base dockerfiles for building RavenDB(Server) Images.

[![Docker Stars](https://img.shields.io/docker/stars/xinix00/ravendb.docker.svg?style=flat)](https://hub.docker.com/r/xinix00/ravendb.docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/xinix00/ravendb.docker.svg?style=flat)](https://hub.docker.com/r/xinix00/ravendb.docker/)
[![Docker build](https://img.shields.io/docker/automated/xinix00/ravendb.docker.svg?style=flat)](https://hub.docker.com/r/xinix00/ravendb.docker/)

# Supported tags and respective `Dockerfile` links
|Version|Build|Tags|Base|Git|
|:------------|:-------------|:-------------|:-------------|:-------------|
|4.0.0-beta|40016 |**40016**, **4.0.0-beta-40016**|ubuntu:xenial|[RavenDB.Docker](https://github.com/xinix00/RavenDB.Docker/tree/master/40016/ubuntu "40016")|
|4.0.0-beta|40014 |**40014**, **4.0.0-beta-40014**|ubuntu:xenial|[RavenDB.Docker](https://github.com/xinix00/ravendb.Docker/tree/master/40014/ubuntu "40014")|
|4.0.0-alpha|40013 |**40013**, **4.0.0-alpha-40013**|ubuntu:xenial|[RavenDB.Docker](https://github.com/xinix00/ravendb.Docker/tree/master/40013/ubuntu "40013")|

# How to use this image
`docker run -p 8080:8080 -p 38888:38888 xinix00/ravendb.docker`
This will store the workspace in `/var/lib/ravendb` all RavenDB data is contained within that workspace. **RavenDB will store the system and subsequent database(s) there.**

>**Note:** You will probably want to make that a persistent volume (recommended).


`docker run -p 8080:8080 -p 38888:38888 -v /your/home:/var/lib/ravendb xinix00/ravendb.docker`
This will store the RavenDB data in `/your/home` on the host.

## You can also use a volume container
`docker run --name myravendb -p 8080:8080 -p 38888:38888 -v /var/lib/ravendb xinix00/ravendb.docker`
Then myravendb container has the volume (please do read about docker volume handling to find out more).

## Environment Variables
...

>**Note:** These are the environment properties for the alpha builds.
* RAVEN_Port: The port to use when creating the http listener.
* RAVEN_Url: The URLs which the server should listen to.
* RAVEN_TCP_Port: The TCP port to use when creating the tcp listener.
* RAVEN_TCP_Url: The TCP URL which the server should listen to.
* RAVEN_DataDir: The directory for the RavenDB resource.
* RAVEN_AllowAnonymous: Grant administrative access to the server for anonymous

# User Feedback

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/xinix00/ravendb.Docker/issues).