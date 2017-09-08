#!/bin/bash
set -e
set -x

NOW=$(date '+%Y%m%d%H%M%S')

docker build -t "lucidworks/fluentd-fusion-$NOW" .


echo "Built image: fluentd-fusion"
docker image list | grep $NOW

docker login --username "$HUB_USERNAME" --password "$HUB_PASSWORD"

docker tag lucidworks/fluentd-fusion-$NOW lucidworks/fluentd-fusion:$NOW
docker tag lucidworks/fluentd-fusion-$NOW lucidworks/fluentd-fusion:latest
docker push lucidworks/fluentd-fusion:$NOW
docker push lucidworks/fluentd-fusion:latest

