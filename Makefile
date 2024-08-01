
default: build

build:
	@echo "[build]"
	@docker build --file Dockerfile --tag jndy/docker-protoc .