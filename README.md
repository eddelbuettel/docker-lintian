
## docker-lintian

Dockerfile to run [lintian](https://packages.debian.org/sid/lintian) from
Debian unstable to validate Debian packages.

### Usage example

```
$ docker run -w /root -v ${PWD}:/root/ -it eddelbuettel/lintian lintian my-0.0.1.deb
```
