VERSION=0.1.0
NAME=silverwind/registry-armhf

default: build

bin:
	mkdir bin

$(GOPATH)/bin/registry:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go get -a -ldflags '-s' github.com/docker/distribution/cmd/registry

build: $(GOPATH)/bin/registry bin
	cp $(GOPATH)/bin/registry .
	docker build -t $(NAME) .
	docker tag $(NAME) $(NAME):$(VERSION)

clean:
	rm -rf registry
	rm -rf $(GOPATH)/bin/registry

push:
	docker push $(NAME)

test:
	docker run --rm $(NAME) --version
