#!/bin/bash

if [ $# -lt 2 ]
then
  echo "Please give namespace and topic as argument"
  exit -1
else
  topic=$1
fi

echo "creating topic"
cat kafka-topic.yaml \
  | sed "s/name: .*/name: $topic/" \
  | kubectl -n demo apply -f -
