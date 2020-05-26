#!/bin/sh
set -e

HARBOR_NAME=fcp-cr-dev

kubectl create ns $HARBOR_NAME
helm install $HARBOR_NAME harbor/harbor -n $HARBOR_NAME