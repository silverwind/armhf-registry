# registry-armhf

Minimal [Docker Registry](https://docs.docker.com/registry/) for armhf (ARMv7), built from scratch.

### Example
````sh
$ docker run -d -v /srv/registry-data:/data -p 5000:5000 \
  --restart=always --name registry silverwind/registry-armhf
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
