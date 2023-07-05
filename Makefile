help:
	@echo "build - build the site"
	@echo "clean - clean up docker images"
	@echo "image - build the docker image"
	@echo "serve - serve the site"
	@echo "shell - run a shell in the container"

DIR := /app
HOST := 0.0.0.0
IMAGE := datalabitam.github.io
PORT := 1313

RUN := docker run --rm -it \
	-p $(PORT):$(PORT) \
	-v `pwd`:$(DIR) \
	$(IMAGE)

build:
	$(RUN)

clean:
	docker image prune -f

image:
	docker build -t $(IMAGE) .

serve:
	$(RUN) server

shell:
	$(RUN) /bin/bash
