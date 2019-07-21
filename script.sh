#!/usr/bin/env sh

alias find_packages='python -c "from setuptools import find_packages;print('\''\n'\''.join(find_packages()))"'

case ${PLUGIN_LINTER} in
mypy)
  find_packages | xargs -r mypy;;
*)
  echo "Linter not found";;
esac
