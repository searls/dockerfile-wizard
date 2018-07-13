#!/bin/bash

set -e


export IMAGE_NAME="rails-cypress"
export IMAGE_TAG="1"
export LINUX_VERSION="DEBIAN_STRETCH"
export RUBY_VERSION_NUM="2.5.1"
export NODE_VERSION_NUM="8.11.3"
export JAVA="false"
export MYSQL_CLIENT="false"
export POSTGRES_CLIENT="true"
export DOCKERIZE="false"
export BROWSERS="true"

./scripts/generate.sh > Dockerfile
