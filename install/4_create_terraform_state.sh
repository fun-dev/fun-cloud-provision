#!/bin/sh
set -e

GCP_PROJECT=fun-cloud-platform
GCS_CLASS=STANDARD
GCS_REGION=ASIA-NORTHEAST1 #Tokyo
GCS_BUCKET=fcp-tf-state-dev

gsutil mb -p $GCP_PROJECT -c $GCS_CLASS -l $GCS_REGION gs://$GCS_BUCKET/