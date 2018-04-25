IMAGE_NAME := alexandrecarlton/intellij-idea
IDEA_VERSION := 2018.1.2

all: build

build:
	docker build \
		--build-arg=IDEA_VERSION=$(IDEA_VERSION) \
		--tag=$(IMAGE_NAME) \
		.
.PHONY: build

run:
	docker run \
		-it \
		--rm \
		--privileged \
		--net=host \
		--env DISPLAY=$(DISPLAY) \
		--mount=type=bind,src=/tmp/.X11-unix,dst=/tmp/.X11-unix \
		$(IMAGE_NAME)
.PHONY: run
