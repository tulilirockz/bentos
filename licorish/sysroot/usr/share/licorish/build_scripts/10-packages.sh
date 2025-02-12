#!/usr/bin/env bash

set -euox pipefail

dnf -y update
grep -v '^#' /usr/share/licorish/packages.list | xargs dnf -y install
grep -v '^#' /usr/share/licorish/distrobox.list | xargs dnf -y install
