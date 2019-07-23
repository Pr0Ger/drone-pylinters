#!/usr/bin/env bash

declare PLUGIN_LINTER
declare PLUGIN_SKIP_PACKAGES

all_packages=$(python -c "from setuptools import find_packages;print('\n'.join(find_packages()))")
skipped_packages=$(echo "${PLUGIN_SKIP_PACKAGES:-test,tests}" | sed -r 's/,/|/g;s/^(.+)$/\(\1)/g')
packages=$(echo "${all_packages}" | grep -Ev "${skipped_packages}")

case ${PLUGIN_LINTER} in
mypy)
  echo "${packages}" | xargs -r mypy
  ;;
*)
  echo "Linter not found"
  ;;
esac
