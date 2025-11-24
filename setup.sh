#!/bin/sh

git clone https://github.com/ha4gu/docker-mirakurun-epgstation.git ./tv
cd ./tv/

cp epgstation/config/enc.js.template epgstation/config/enc.js
cp epgstation/config/config.yml.template epgstation/config/config.yml
cp epgstation/config/operatorLogConfig.sample.yml epgstation/config/operatorLogConfig.yml
cp epgstation/config/epgUpdaterLogConfig.sample.yml epgstation/config/epgUpdaterLogConfig.yml
cp epgstation/config/serviceLogConfig.sample.yml epgstation/config/serviceLogConfig.yml

cp mirakurun/conf/channels.tokyo.yml mirakurun/conf/channels.yml
cp mirakurun/conf/tuners.sample.yml mirakurun/conf/tuners.yml

docker compose run --rm -e SETUP=true mirakurun
