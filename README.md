# kubernetes-fluentd-loggly

# Supported tags and respective `Dockerfile` links

- [`1.0` (*1.0/Dockerfile*)](https://github.com/sekka1/kubernetes-fluentd-loggly/blob/1.0/1.0/Dockerfile)

# Description

Send Kubernetes logs to Loggly.com with fluentd

This is based on: https://github.com/kubernetes/kubernetes/tree/master/cluster/addons/fluentd-elasticsearch/fluentd-es-image


To link kubectl with our Docker Hub repo:

kubectl create secret docker-registry lucidworks-dockerhub --docker-server=https://index.docker.io/v1/ --docker-username="$HUB_USERNAME" --docker-password="$HUB_PASSWORD" --docker-email="john.gibson@lucidworks.com"
