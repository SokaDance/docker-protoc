version := 1.0.0

default: build

build:
	@echo "[build]"
	@docker build --file Dockerfile --tag jndy/docker-protoc .

publish:
	@echo "[publish]"
	@docker image tag jndy/docker-protoc jndy/docker-protoc:v$(version)
	@docker image push jndy/docker-protoc:v$(version)