#!/bin/bash

pkgs=$(find /tmp/packages -type f \( -name '*.whl' -o -name '*.tar.gz' \) | sed -E 's/(-py3-none-any\.whl|\.tar\.gz)//g' | sort -u)

for pkg in $pkgs; do
  pkg_name_version=$(basename "$pkg")
  pkg_name=$(echo "$pkg_name_version" | sed -E 's/(.*)-([0-9]+(\.[0-9]+)+)/\1/')
  pkg_version=$(echo "$pkg_name_version" | sed -E 's/(.*)-([0-9]+(\.[0-9]+)+)/\2/')
  echo "Installing package $pkg_name==$pkg_version"
  pip install --trusted-host local-pypi --index-url http://local-pypi:8888/simple "$pkg_name==$pkg_version" --no-deps
done
