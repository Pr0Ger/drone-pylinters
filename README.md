# drone-pylinters

[![Build Status](https://drone.pr0ger.dev/api/badges/Pr0Ger/drone-pylinters/status.svg)](https://drone.pr0ger.dev/Pr0Ger/drone-pylinters)
[![Image size](https://images.microbadger.com/badges/image/pr0ger/drone-pylinters.svg)](https://microbadger.com/images/pr0ger/drone-pylinters)

Drone Plugin for linting Python code. Supported linters:
- [mypy](http://mypy.readthedocs.org/)

## Docker

Build the Docker image with the following commands:

```Shell
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --tag pr0ger/drone-pylinters .
```

## Usage

```Shell
docker run --rm \
  -e PLUGIN_LINTER=mypy \
  -v $(pwd):/drone/src \
  -w /drone/src \
  pr0ger/drone-pylinters
```
