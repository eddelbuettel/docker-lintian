## Emacs, make this -*- mode: sh; -*-
 
FROM debian:unstable
#FROM debian:unstable-slim

LABEL maintainer="edd@debian.org"

RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends lintian \
	&& rm -rf /var/lib/apt/lists/*


