#!/bin/sh
set -e

TERRAFORM_SA_DEST=./secret/key.json
TERRAFORM_SA=terraform-service-account
SA_NAME=terraform-service-account@fun-cloud-platform.iam.gserviceaccount.com

TERRAFORM_SA_EMAIL=$(gcloud iam service-accounts list \
    --filter="displayName:$TERRAFORM_SA" \
    --format='value(email)')

gcloud iam service-accounts keys create $TERRAFORM_SA_DEST \
    --iam-account $TERRAFORM_SA_EMAIL

export GOOGLE_APPLICATION_CREDENTIALS=$TERRAFORM_SA_DEST
