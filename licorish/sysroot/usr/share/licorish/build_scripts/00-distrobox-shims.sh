#!/bin/sh

set -euox pipefail

DISTROBOX_HOST_BINARY="/usr/bin/distrobox-host-exec"
OVERRIDE_DIR="/usr/local/bin"

BINARIES=("docker" "flatpak" "podman" "rpm-ostree" "unshare")

for TARGET_BINARY in "${BINARIES[@]}" ; do
  ln -fs "$DISTROBOX_HOST_BINARY" "${OVERRIDE_DIR}/$TARGET_BINARY"
done
ln -fs "$DISTROBOX_HOST_BINARY" "/usr/bin/unshare"
