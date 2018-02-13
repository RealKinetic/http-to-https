DOCKER_BASE=realkinetic/http-to-https
DOCKER_TAG=1.0
$(eval GIT_COMMIT = $(shell git rev-parse HEAD))

ALPINE_VERSION=3.7

default: build

clean:
	rm -f Dockerfile

Dockerfile: Dockerfile.template
	sed \
		-e 's!{{ .AlpineVersion }}!'"$(ALPINE_VERSION)"'!g' \
		-e 's!{{ .Version }}!'"$(DOCKER_TAG)"'!g' \
		-e 's!{{ .GitCommit }}!'"$(GIT_COMMIT)"'!g' \
		Dockerfile.template > Dockerfile

build: Dockerfile
	docker build -t realkinetic/http-to-https:$(DOCKER_TAG) .

run: build
	docker run -it -p80:80 --rm realkinetic/http-to-https

debug: build
	docker run -it -p80:80 --rm realkinetic/http-to-https /bin/sh
