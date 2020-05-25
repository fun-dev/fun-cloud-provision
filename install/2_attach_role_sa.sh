#!/bin/sh
set -e

GCP_PROJECT=fun-cloud-platform
TERRAFORM_SA=terraform-service-account

TERRAFORM_SA_EMAIL=$(gcloud iam service-accounts list \
    --project=$GCP_PROJECT \
    --filter="displayName:$TERRAFORM_SA" \
    --format='value(email)')

gcloud projects add-iam-policy-binding $GCP_PROJECT \
    --role roles/iam.serviceAccountUser \
    --member serviceAccount:$TERRAFORM_SA_EMAIL

gcloud projects add-iam-policy-binding $GCP_PROJECT \
    --role roles/compute.admin \
    --member serviceAccount:$TERRAFORM_SA_EMAIL

gcloud projects add-iam-policy-binding $GCP_PROJECT \
    --role roles/storage.admin \
    --member serviceAccount:$TERRAFORM_SA_EMAIL

gcloud projects add-iam-policy-binding $GCP_PROJECT \
    --role roles/container.clusterAdmin \
    --member serviceAccount:$TERRAFORM_SA_EMAIL