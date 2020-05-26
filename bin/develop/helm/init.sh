#!/bin/sh
set -e

helm repo add harbor https://helm.goharbor.io
helm repo add jetstack https://charts.jetstack.io
helm repo update