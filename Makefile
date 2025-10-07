.PHONY: build run

build:
	docker build --no-cache -f dev_env/Dockerfile -t dev-env .

run:
	docker container rm -f dev-env
	docker run -d --name dev-env dev-env
