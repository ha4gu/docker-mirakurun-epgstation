#!/bin/sh

git clone https://github.com/ha4gu/docker-mirakurun-epgstation.git ./tv
cd ./tv/

cp epgstation/config/config.sample.yml epgstation/config/config.yml

cp mirakurun/conf/channels.tokyo.yml mirakurun/conf/channels.yml
cp mirakurun/conf/tuners.sample.yml mirakurun/conf/tuners.yml

docker compose run --rm -e SETUP=true mirakurun
