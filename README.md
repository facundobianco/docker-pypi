# Docker container for Pypi 1.1.10

This is a lightweight docker image (75.3 MB) for [Pypi v1.1.10](https://github.com/pypiserver/pypiserver/releases/tag/v1.1.10), a Python package repository

## How to get it

```
docker pull vando/pypi
docker run -p 8080:8080 \
           -v /mnt/pypi-pkgs:/mnt/pkgs \
	   -d --restart=always --name pypi vando/pypi
```

## htpasswd support

It doesn't include support for *htpasswd* file because I recommend that you use Pypi through a webserver. 

Otherwise, you can [install libpass](https://github.com/pypiserver/pypiserver/tree/v1.1.10#uploading-packages-from-sources-remotely) in the build process adding

```
RUN pip install libpass
```
