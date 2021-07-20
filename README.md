
docker-lintian
==============

Dockerfile to run [lintian](https://packages.debian.org/sid/lintian) from
Debian unstable to validate Debian packages.

# Usage example

## Using podman

[podman](https://podman.io/) is daemonless container engine. If you are using docker, replace `podman` with `docker`
in the following command

```
$ podman run -w /root -v ${PWD}:/root/ --user ${UID}:${GID} -it eddelbuettel/lintian lintian /path/to/my-0.0.1.deb
```

## Using docker

```
$ docker run -w /root -v ${PWD}:/root/ --user ${UID}:${GID} -it eddelbuettel/lintian lintian /path/to/my-0.0.1.deb
```

