#!/bin/bash
docker manifest create csana/swarmtest:latest csana/swarmtest:amd64-latest csana/swarmtest:arm32v6-latest 
docker manifest annotate csana/swarmtest:latest csana/swarmtest:arm32v6-latest --os linux --arch arm
docker manifest push csana/swarmtest:latest
