# armhf-registry

Minimal [Docker Registry](https://docs.docker.com/registry/) image for `armhf` aka. ARMv7, built comepletely from the `scratch` image. Current image size is 11MB.

### Example
````sh
$ docker run -d -v /srv/registry:/data -p 5000:5000 --restart=always --name registry silverwind/armhf-registry
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
