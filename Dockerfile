FROM python:2.7-alpine
MAINTAINER Facundo Bianco <vando@van.do>

ADD https://github.com/pypiserver/pypiserver/archive/v1.1.10.tar.gz /usr/local/src/pypiserver-1.1.10.tar.gz
RUN tar -zxvf /usr/local/src/pypiserver-1.1.10.tar.gz -C /usr/local/src
RUN cd /usr/local/src/pypiserver-1.1.10 ; python setup.py install
RUN rm -r /usr/local/src

RUN mkdir /mnt/pkgs
WORKDIR /mnt

VOLUME ["/mnt/pkgs"]
EXPOSE 8080
ENTRYPOINT ["pypi-server", "pkgs"]
