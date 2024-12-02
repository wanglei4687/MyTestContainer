.PHONY: build-base
build-base:
	$(info Build base...)
	@go build -o bin/base cmd/base/main.go

.PHONY: load-base-image
load-base-image:
	$(info Load base image...)
	@docker buildx build --platform linux/amd64 --load -t wanglei4687/mytestcontainer:base -f docker/Dockerfile.base .

.PHONY: build-base-image
build-base-image:
	$(info Build base image...)
	@docker buildx build --platform linux/amd64 --push -t wanglei4687/mytestcontainer:base -f docker/Dockerfile.base .