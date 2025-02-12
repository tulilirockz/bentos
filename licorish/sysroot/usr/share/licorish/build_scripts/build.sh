#!/usr/bin/env bash

set -euo pipefail

for script in /usr/share/licorish/build_scripts/*-*.sh; do
	printf "::group:: ===%s===\n" "$(basename "$script")"
	$script
	printf "::endgroup::\n"
done


shopt -s extglob

# shellcheck disable=SC2115
rm -rf /var/!(cache)
rm -rf /var/cache/!(rpm-ostree)
rm -f /.gitkeep
dnf clean all
