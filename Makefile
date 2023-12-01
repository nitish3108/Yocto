
IMAGE_NAME := nitishyoctobuildsystem
tag := 0.01
DOCKERFILE := Dockerfile.buildImage
TIMEOUT := 15
DOCKER := docker
IMAGE := buildImage

# RUN with sleep
container_sleep:
	sleep 5

# To build the docker container
build:
	$(DOCKER) image build -t $(IMAGE_NAME):$(tag) -f $(DOCKERFILE) .

# To clean the build docker image
clean:
	$(DOCKER) rmi $(IMAGE_NAME):$(tag)

# To stop all the running container and remove it
all_clean:
	$(DOCKER) stop $(IMAGE)
	$(DOCKER) rm $(IMAGE)
	make clean

# To start the docker compose
docker_compose_up:
	$(DOCKER) compose up 

docker_compose_restart:
	$(DOCKER) compose stop
	$(DOCKER) compose start 

# To enter inside the docker container and execute
execute:
	make all_clean || echo "No existing docker container"
	make build
	-timeout -k 1 $(TIMEOUT) make docker_compose_up || { echo "docker_compose_up failed"; exit 1; } 
	@echo "Sleeping for 5 second"
	make container_sleep
	make docker_compose_restart
	$(DOCKER) exec -it $(IMAGE) /bin/bash

# Display all th epossible command
help:
	@echo "Available targets:"
	@echo "  make build       - Build Docker image"
	@echo "  make clean       - Remove Docker image"
	@echo "  make help        - Show this help message"

.DEFAULT_GOAL := help
