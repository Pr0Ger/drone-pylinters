# drone-pytools

[![Build Status](https://drone.pr0ger.dev/api/badges/Pr0Ger/drone-pytools/status.svg)](https://drone.pr0ger.dev/Pr0Ger/drone-pytools)
[![Image size](https://images.microbadger.com/badges/image/pr0ger/drone-pytools.svg)](https://microbadger.com/images/pr0ger/drone-pytools)

Drone Plugin with various tools for working with Python code. List:
- [mypy](http://mypy.readthedocs.org/)
- [pycodestyle](https://github.com/pycqa/pycodestyle)

## Docker

Build the Docker image with the following commands:

```Shell
docker build \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --tag pr0ger/drone-pytools .
```

## Usage

```Shell
docker run --rm \
  -e PLUGIN_TOOL=mypy \
  -v $(pwd):/drone/src \
  -w /drone/src \
  pr0ger/drone-pytools
```

From .drone.yml
```yaml
---
kind: pipeline
name: publish

steps:
- name: lint
  image: pr0ger/drone-pytools
  settings:
    tool: mypy
    skip_packages: tests
```
