# armhf-registry

Minimal [Docker Registry](https://docs.docker.com/registry/) image for the ARM architecutre, built completely from the `scratch` image. Current image size is 11MB. ARMv5 and up are supported.

*Note: this image was named `registry-armhf` previously.*

### Example
````sh
$ docker run -d -v /srv/registry:/data -p 5000:5000 --name registry silverwind/armhf-registry
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
