#!/usr/bin/env sh

case ${PLUGIN_LINTER} in
mypy)
  python /find_packages.py | xargs -r mypy;;
*)
  echo "Linter not found";;
esac
