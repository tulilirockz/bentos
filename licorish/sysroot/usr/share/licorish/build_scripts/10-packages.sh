#!/usr/bin/env bash

set -euox pipefail

dnf update -y
grep -v '^#' /usr/share/licorish/packages.list | xargs dnf install -y 
