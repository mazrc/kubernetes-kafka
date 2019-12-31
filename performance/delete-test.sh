#!/usr/bin/env bash
set -e

echo "deleting..."

kubectl delete deployment producer -n kafka