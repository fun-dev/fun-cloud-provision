#!/bin/sh
set -e

IP_NAME=fcp-dev-ip
IP_REGION=asia-northeast1

gcloud compute addresses delete $IP_NAME --region $IP_REGION