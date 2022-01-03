#!/bin/bash
set -ex

curl -Ls https://install.tuist.io | bash

if [ "$env_vars" != "" ]; then
    IFS=' ' read -ra ADDR <<< "$env_vars"
    for i in "${ADDR[@]}"; do
    export $i
    done
fi

cd $BITRISE_SOURCE_DIR/GripApp && tuist $command $arguments $options