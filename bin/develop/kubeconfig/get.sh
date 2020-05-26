#!/bin/sh
set -e

CLUSTER_NAME=primary-fcp-shared-cluster-dev
REGION=asia-northeast1

gcloud container clusters get-credentials $CLUSTER_NAME --region $REGION