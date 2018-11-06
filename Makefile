PROJECTNAME=server
ROOT_DIR=$(shell pwd)
all: help

## `ServerEnv == TEST` begins
run-test: build
	ServerEnv=TEST $(ROOT_DIR)/${PROJECTNAME}

build:
	go build -o $(ROOT_DIR)/${PROJECTNAME}
## `ServerEnv == TEST` ends

## `ServerEnv == PROD` begins
run-prod: build-prod
	$(ROOT_DIR)/${PROJECTNAME}

build-prod:
	go build -ldflags "-s -w -X main.VERSION=$(shell git rev-parse --short HEAD)-$(shell date "+%Y%m%d-%H:%M:%S")" -o $(ROOT_DIR)/${PROJECTNAME}
## `ServerEnv == PROD` ends
