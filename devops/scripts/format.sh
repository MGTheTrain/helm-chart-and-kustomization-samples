#!/usr/bin/bash

set -euo pipefail

SCRIPT_DIR=$(dirname "$BASH_SOURCE")
ROOT_PROJECT_DIR=$SCRIPT_DIR/../..

cd $ROOT_PROJECT_DIR

BLUE='\033[0;34m'
NC='\033[0m'

echo "#####################################################################################################"
echo -e "$BLUE INFO: $NC About to auto-format hcl files and generate hcl docs"

DEVOPS_TF_FOLDER="./devops/terraform"
for dir in ${DEVOPS_TF_FOLDER} ; do
  terraform-docs markdown table --output-file README.md --hide providers --output-mode replace "$dir"
done

terraform fmt -recursive .

cd -
