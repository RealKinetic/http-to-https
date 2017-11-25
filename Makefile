default: build

build:
	docker build -t realkinetic/http-to-https .

run: build
	docker run -it -p80:80 --rm realkinetic/http-to-https

debug: build
	docker run -it -p80:80 --rm realkinetic/http-to-https /bin/sh
