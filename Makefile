help:
	@echo "build - build the site"
	@echo "clean - remove the site"
	@echo "image - build the docker image"
	@echo "serve - serve the site"
	@echo "shell - run a shell in the container"
	@echo "update - clean, build, and serve the site"

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
	rm -rf ./docs

image:
	docker build --no-cache -t $(IMAGE) .

serve:
	$(RUN) server

shell:
	$(RUN) /bin/bash

update: clean image build