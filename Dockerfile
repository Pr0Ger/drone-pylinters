FROM python:alpine

RUN \
    apk add --no-cache --update build-base ca-certificates && \
    pip install --no-cache-dir --upgrade mypy pip && \
    apk del build-base

ADD script.py .

ENTRYPOINT ["/script.py"]
