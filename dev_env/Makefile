.PHONY: build run refresh

build:
	docker build --no-cache -f Dockerfile -t dev-env .

run:
	docker container rm -f dev-env
	docker run -d --name dev-env dev-env

refresh: build run
