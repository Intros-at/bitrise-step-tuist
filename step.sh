#!/bin/bash
set -ex

curl -Ls https://install.tuist.io | bash

$env_vars tuist $command $arguments $options