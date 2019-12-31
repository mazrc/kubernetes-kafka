#!/bin/bash

echo "modifying cluster"

kubectl apply -f - <<"EOF"
kind: Namespace
apiVersion: v1
metadata:
  name: logging
  labels:
    name: logging
EOF
