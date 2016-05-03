# silverwind/registry-armhf

Minimal scratch-based docker image for a docker registry on ARM.

### Example
````sh
$ docker run -d -v $PWD/vol:/var/lib/registry -p 5000:5000 \
  --restart=always --name registry silverwind/registry-armhf
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
