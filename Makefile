VERSION=0.1.1
NAME=silverwind/armhf-registry

default: build

$(GOPATH)/bin/registry:
	echo $(GOPATH)
	CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go get -a -ldflags '-s' github.com/docker/distribution/cmd/registry

build: $(GOPATH)/bin/linux_arm/registry
	cp $(GOPATH)/bin/linux_arm/registry .
	docker build -t $(NAME) .
	docker tag $(NAME) $(NAME):$(VERSION)

clean:
	rm -rf registry
	rm -rf $(GOPATH)/bin/linux_arm/registry

push:
	docker push $(NAME)

test:
	docker run --rm $(NAME) --version
