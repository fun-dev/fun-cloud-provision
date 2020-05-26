#!/bin/sh
set -e

HARBOR_NAME=fcp-cr-dev
helm delete $HARBOR_NAME 
kubectl delete $HARBOR_NAME