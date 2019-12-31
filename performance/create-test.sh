#!/usr/bin/env bash
set -e

kubectl run -n kafka --image strimzi/kafka producer --command -- /opt/kafka/bin/kafka-producer-perf-test.sh \
--topic hello \
--num-records 1000 \
--record-size 100 \
--throughput 1000 \
--producer-props bootstrap.servers=kafka-agr-kafka-bootstrap:9092
