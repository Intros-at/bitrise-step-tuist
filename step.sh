#!/bin/bash
set -ex

curl -Ls https://install.tuist.io | bash

cd $BITRISE_SOURCE_DIR/GripApp && $env_vars tuist $command $arguments $options