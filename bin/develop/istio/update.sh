#!/bin/sh
set -e

CLUSTER_NAME=primary-fcp-shared-cluster-dev
REGION=asia-northeast1-a

gcloud beta container clusters update $CLUSTER_NAME --region $REGION \
    --update-addons=Istio=ENABLED --istio-config=auth=MTLS_PERMISSIVE