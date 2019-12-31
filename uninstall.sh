#!/bin/bash

## Removes Strimzi Kafka cluster and Monitoring dashboard (Prometheus, Grafana)

if [ $# -lt 1 ]
then
  echo "Usage: $0 <NameSpace>"
  exit 3
fi

if [ -z $1 ]
then
  echo "Please give namespace as argument - regex : '[a-z0-9]([-a-z0-9]*[a-z0-9])?'"
  exit -1
else
  namespace=$1
fi


echo "deleting namespace $namespace"
kubectl delete namespace $namespace

echo "list of pods in the namespace after cleanup:"
kubectl get pods -n $namespace

