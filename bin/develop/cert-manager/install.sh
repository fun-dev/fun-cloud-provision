#!/bin/sh
set -e

CERT_MANAGER_NAME=fcp-cm-dev

kubectl create ns $CERT_MANAGER_NAME
helm install \
  $CERT_MANAGER_NAME jetstack/cert-manager \
  --namespace $CERT_MANAGER_NAME \
  --version v0.15.0 \