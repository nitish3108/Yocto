
IMAGE_NAME := nitishyoctobuildsystem
tag := 0.01
DOCKERFILE := Dockerfile.buildImage

DOCKER := docker

build:
	docker image build -t $(IMAGE_NAME):$(tag) -f $(DOCKERFILE) .

clean:
	$(DOCKER) rmi $(IMAGE_NAME):$(tag)

help:
	@echo "Available targets:"
	@echo "  make build       - Build Docker image"
	@echo "  make clean       - Remove Docker image"
	@echo "  make help        - Show this help message"

.DEFAULT_GOAL := help
