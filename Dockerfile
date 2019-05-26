FROM python:alpine

RUN \
    apk add --no-cache --update build-base ca-certificates && \
    pip install --no-cache-dir --upgrade mypy pip && \
    pip uninstall --yes mypy && \
    apk del build-base

ADD script.py .

ENTRYPOINT ["/script.py"]
