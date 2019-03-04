#!/bin/bash
#
# docker build script.
#

docker build \
    --force-rm \
    --tag squid:alpine \
    .
