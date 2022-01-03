#!/bin/bash
set -ex

curl -Ls https://install.tuist.io | bash

IFS=' ' read -ra ADDR <<< "$env_vars"
for i in "${ADDR[@]}"; do
  export $i
done

cd $BITRISE_SOURCE_DIR/GripApp && tuist $command $arguments $options