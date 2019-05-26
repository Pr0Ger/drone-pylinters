# drone-mypy

[![Build Status](https://drone.pr0ger.dev/api/badges/Pr0Ger/drone-mypy/status.svg)](https://drone.pr0ger.dev/Pr0Ger/drone-mypy)
[![Image size](https://images.microbadger.com/badges/image/pr0ger/drone-mypy.svg)](https://microbadger.com/images/pr0ger/drone-mypy)

Drone Plugin for linting Python code with [mypy](http://mypy.readthedocs.org/)

## Docker

Build the Docker image with the following commands:

```Shell
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --tag pr0ger/drone-mypy .
```

## Usage

```Shell
docker run --rm \
  -e PLUGIN_VERSION=0.701 \
  -e PLUGIN_STRICT=true \
  -e PLUGIN_PACKAGE=package_name \
  -v $(pwd):/drone/src \
  -w /drone/src \
  pr0ger/drone-mypy
```
