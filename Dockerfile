## Emacs, make this -*- mode: sh; -*-
 
FROM debian:unstable

LABEL maintainer="edd@debian.org"

RUN apt-get update \ 
	&& apt-get install -y --no-install-recommends lintian \
	&& rm -rf /var/lib/apt/lists/*

## Configure default locale, see https://github.com/rocker-org/rocker/issues/19
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen en_US.utf8 \
	&& /usr/sbin/update-locale LANG=en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

