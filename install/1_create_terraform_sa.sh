#!/bin/sh
set -e

GCP_PROJECT=fun-cloud-platform
TERRAFORM_SA=terraform-service-account

gcloud iam service-accounts create $TERRAFORM_SA \
    --project=$GCP_PROJECT \
    --display-name $TERRAFORM_SA