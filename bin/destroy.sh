#!/usr/bin/env bash
set -e
set -x

export TF_LOG=DEBUG

source `dirname $0`/configure.sh

terraform init

terraform plan -destroy

terraform destroy -auto-approve
