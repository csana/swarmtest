#!/bin/bash
for arch in amd64 arm32v6; do
  docker build -f Dockerfile.${arch} -t csana/swarmtest:${arch}-latest .
  docker push csana/swarmtest:${arch}-latest
done
